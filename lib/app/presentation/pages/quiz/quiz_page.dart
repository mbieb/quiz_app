import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/application/quiz/quiz_bloc.dart';
import 'package:quiz_app/app/domain/quiz/quiz.dart';
import 'package:quiz_app/app/presentation/constants/colors.dart';
import 'package:quiz_app/app/presentation/constants/dimens.dart';
import 'package:quiz_app/app/presentation/constants/text_style.dart';
import 'package:quiz_app/app/presentation/helpers/ui_helper.dart';
import 'package:quiz_app/app/presentation/router.dart';
import 'package:quiz_app/app/presentation/widgets/app_scaffold.dart';
import 'package:quiz_app/generated/l10n.dart';

part './widgets/questions_item.dart';

class QuizPage extends StatelessWidget {
  final String mode;
  final String? topicId;
  const QuizPage({
    super.key,
    required this.mode,
    this.topicId,
  });

  @override
  Widget build(BuildContext context) {
    return _QuizBodyPage(
      mode: mode,
      topicId: topicId,
    );
  }
}

class _QuizBodyPage extends StatefulWidget {
  final String mode;
  final String? topicId;
  const _QuizBodyPage({
    required this.mode,
    this.topicId,
  });

  @override
  State<_QuizBodyPage> createState() => _QuizBodyPageState();
}

class _QuizBodyPageState extends State<_QuizBodyPage> {
  final PageController _controller = PageController();
  late Timer _timer;
  int _seconds = 30;
  final int _totalSeconds = 30;
  int _currentPage = 0;
  bool _isFinished = false;
  late QuizBloc bloc;

  @override
  void initState() {
    super.initState();

    bloc = BlocProvider.of<QuizBloc>(context);

    BlocProvider.of<QuizBloc>(context).add(
      QuizEvent.started(
        mode: widget.mode,
        topicId: widget.topicId,
      ),
    );

    _controller.addListener(_updateCurrentPage);

    _startTimer();
  }

  void _updateCurrentPage() {
    setState(() {
      _currentPage = _controller.page!.round();
    });
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_seconds > 0) {
          _seconds--;
        } else {
          _goToNextPage();

          _resetTimerAndCheckLastPage();
        }
      });
    });
  }

  void _goToNextPage() {
    _controller.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void _resetTimerAndCheckLastPage() {
    if (_currentPage == 4 && _seconds == 0 || _isFinished) {
      _timer.cancel();
      context.pushReplacement(AppRouter.result, extra: bloc.state.questionList);
    }
    _seconds = _totalSeconds;
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    I10n i10n = I10n.of(context);

    return BlocBuilder<QuizBloc, QuizState>(
      builder: (context, state) {
        return AppScaffold(
          isLoading: state.isLoading,
          backgroundColor: cColorPrimary,
          appBar: AppBar(
            backgroundColor: cColorPrimary,
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 22,
              ),
              onPressed: () {
                context.pop();
              },
            ),
            title: Text(
              i10n.quizPage,
              style: cTextAccentMed,
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: Padding(
                  padding: padding(right: 16),
                  child: Center(
                    child: Text(
                      ('Exit'),
                      style: cTextAccentMed,
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: PageView(
            controller: _controller,
            physics: const NeverScrollableScrollPhysics(),
            children: state.questionList
                .asMap()
                .entries
                .map(
                  (data) => _QuestionItem(
                    data: data,
                    seconds: _seconds,
                    totalSeconds: _totalSeconds,
                    currentPage: data.key + 1,
                    totalPage: state.questionList.length,
                    onPressedAnswer: (String answerId) {
                      bloc.add(
                        QuizEvent.answerQuestion(
                            questionIndex: data.key, answerId: answerId),
                      );

                      Future.delayed(const Duration(seconds: 2), () {
                        if (data.key == state.questionList.length - 1) {
                          setState(() {
                            _isFinished = true;
                          });
                        }
                        _goToNextPage();
                        _resetTimerAndCheckLastPage();
                      });
                    },
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}
