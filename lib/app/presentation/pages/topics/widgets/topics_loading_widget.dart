part of '../topics_page.dart';

class TopicsLoadingWidget extends StatelessWidget {
  const TopicsLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: padding(vertical: 8),
          child: Shimmer.fromColors(
            baseColor: const Color(0xFFCCCCCC),
            highlightColor: Colors.grey.shade100,
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: cColorPrimary,
              ),
            ),
          ),
        );
      },
    );
  }
}
