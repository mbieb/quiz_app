import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/application/quiz/quiz_bloc.dart';
import 'package:quiz_app/app/presentation/constants/colors.dart';
import 'package:quiz_app/app/presentation/constants/dimens.dart';
import 'package:quiz_app/app/presentation/constants/text_style.dart';
import 'package:quiz_app/app/presentation/helpers/ui_helper.dart';
import 'package:quiz_app/app/presentation/widgets/app_scaffold.dart';
import 'package:quiz_app/generated/l10n.dart';

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
  @override
  void initState() {
    super.initState();

    BlocProvider.of<QuizBloc>(context).add(
      QuizEvent.started(
        mode: widget.mode,
        topicId: widget.topicId,
      ),
    );
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
          ),
          body: PageView(
            children: state.questionList
                .map(
                  (e) => Column(
                    children: [
                      LinearProgressIndicator(
                        color: Colors.amber,
                        minHeight: 4,
                        value: 1,
                      ),
                      ListView(
                        padding: padding(all: Sizes.p16),
                        shrinkWrap: true,
                        children: [
                          Container(
                            padding: padding(all: Sizes.p16),
                            decoration: BoxDecoration(
                              color: cColorWhite,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  e.question ?? '',
                                  style: cTextBold,
                                  textAlign: TextAlign.center,
                                ),
                                if (e.imgUrl?.isNotEmpty == true)
                                  Padding(
                                    padding: padding(vertical: 8),
                                    child: CachedNetworkImage(
                                      imageUrl: e.imgUrl ?? '',
                                      fit: BoxFit.cover,
                                      height: 200,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          gapH16,
                          ...e.answers
                                  ?.map((e) => ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: cColorWhite,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          e.text ?? '',
                                          style: cTextRegSM,
                                        ),
                                      ))
                                  .toList() ??
                              [],
                        ],
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}
