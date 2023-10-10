part of '../result_page.dart';

class _ResultQuestionItem extends StatelessWidget {
  final Question data;
  const _ResultQuestionItem(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin(vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data.question ?? '',
            style: cTextAccentReg,
          ),
          Row(
            children: [
              if (data.correctAnswerId != data.userAnswerId)
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                      gapW8,
                      Expanded(
                        child: Text(
                          (data.answers
                                  ?.firstWhere(
                                    (element) =>
                                        element.id == (data.userAnswerId ?? ''),
                                    orElse: () => const Answer(text: ''),
                                  )
                                  .text) ??
                              '',
                          style: cTextAccentRegSM,
                        ),
                      ),
                    ],
                  ),
                ),
              gapW4,
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                    gapW8,
                    Expanded(
                      child: Text(
                        (data.answers
                                ?.firstWhere(
                                  (element) =>
                                      element.id ==
                                      (data.correctAnswerId ?? ''),
                                  orElse: () => const Answer(text: ''),
                                )
                                .text) ??
                            '',
                        style: cTextAccentRegSM,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
