part of '../quiz_page.dart';

class _QuestionItem extends StatelessWidget {
  final MapEntry<int, Question> data;
  final Function(String answerId) onPressedAnswer;
  final int seconds;
  final int totalSeconds;
  final int currentPage;
  final int totalPage;
  const _QuestionItem({
    required this.data,
    required this.onPressedAnswer,
    required this.seconds,
    required this.totalSeconds,
    required this.currentPage,
    required this.totalPage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        LinearProgressIndicator(
          color: cColorPrimary2,
          valueColor: const AlwaysStoppedAnimation<Color>(Colors.amber),
          minHeight: 4,
          value: (totalSeconds - seconds) / totalSeconds,
        ),
        gapH12,
        Padding(
          padding: padding(horizontal: 16),
          child: Container(
            padding: padding(all: 8),
            decoration: BoxDecoration(
              color: cColorWhite,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text('$currentPage/$totalPage'),
          ),
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
                    data.value.question ?? '',
                    style: cTextBold,
                    textAlign: TextAlign.center,
                  ),
                  if (data.value.imgUrl?.isNotEmpty == true)
                    Padding(
                      padding: padding(vertical: 8),
                      child: CachedNetworkImage(
                        imageUrl: data.value.imgUrl ?? '',
                        fit: BoxFit.cover,
                        height: 200,
                        errorWidget: (context, url, error) =>
                            const SizedBox.shrink(),
                      ),
                    ),
                ],
              ),
            ),
            gapH24,
            ...data.value.answers
                    ?.map((answer) => Container(
                          margin: margin(vertical: 2),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: data.value.userAnswerId == null
                                  ? cColorWhite
                                  : (data.value.userAnswerId == answer.id &&
                                          data.value.userAnswerId ==
                                              data.value.correctAnswerId)
                                      ? Colors.green
                                      : (data.value.userAnswerId == answer.id &&
                                              data.value.userAnswerId !=
                                                  data.value.correctAnswerId)
                                          ? Colors.red
                                          : data.value.correctAnswerId ==
                                                  answer.id
                                              ? Colors.green
                                              : cColorWhite,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                            ),
                            onPressed: data.value.userAnswerId != null
                                ? () {}
                                : () => onPressedAnswer(answer.id ?? ''),
                            child: Text(
                              answer.text ?? '',
                              style: cTextRegSM,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ))
                    .toList() ??
                [],
          ],
        ),
      ],
    );
  }
}
