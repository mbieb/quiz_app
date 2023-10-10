import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/domain/quiz/quiz.dart';
import 'package:quiz_app/app/presentation/constants/colors.dart';
import 'package:quiz_app/app/presentation/constants/dimens.dart';
import 'package:quiz_app/app/presentation/constants/text_style.dart';
import 'package:quiz_app/app/presentation/helpers/ui_helper.dart';
import 'package:quiz_app/app/presentation/widgets/app_scaffold.dart';
import 'package:quiz_app/generated/l10n.dart';

part './widgets/result_question_item.dart';

class ResultPage extends StatelessWidget {
  final List<Question> questions;
  const ResultPage({
    required this.questions,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return _ResultBodyPage(
      questions: questions,
    );
  }
}

class _ResultBodyPage extends StatelessWidget {
  final List<Question> questions;
  const _ResultBodyPage({
    required this.questions,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    I10n i10n = I10n.of(context);
    return AppScaffold(
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
          i10n.yourScore,
          style: cTextAccentMed,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: padding(all: 16),
          child: Column(
            children: [
              gapH12,
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 85,
                      height: 85,
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.red,
                        value: (getCorrectAnswer(questions)) / questions.length,
                        valueColor: const AlwaysStoppedAnimation<Color>(
                          Colors.green,
                        ),
                        strokeWidth: 8,
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        '${getCorrectAnswer(questions)}/${questions.length}',
                        style: cTextAccentReg,
                      ),
                    )
                  ],
                ),
              ),
              gapH16,
              ElevatedButton(
                onPressed: () {},
                child: Text(i10n.shareYourScore),
              ),
              gapH12,
              Text(
                i10n.yourReport,
                style: cTextAccentMed,
                textAlign: TextAlign.center,
              ),
              gapH16,
              ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  var data = questions[index];
                  return _ResultQuestionItem(data);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
