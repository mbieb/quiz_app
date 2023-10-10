part of '../topics_page.dart';

class _TopicsItem extends StatelessWidget {
  final Topics data;
  const _TopicsItem({
    required this.data,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          AppRouter.quiz,
          pathParameters: {
            'mode': "1",
            'topicId': data.id ?? '',
          },
        );
      },
      child: Container(
        width: double.infinity,
        margin: margin(vertical: 8),
        padding: padding(horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: cColorPrimary2,
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                data.name ?? '',
                style: cTextAccentMed,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.play_arrow,
                color: cColorWhite,
              ),
            )
          ],
        ),
      ),
    );
  }
}
