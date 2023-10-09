import 'package:injectable/injectable.dart';
import 'package:quiz_app/app/domain/topics/topics.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

@injectable
class TopicsRemoteDataSource {
  TopicsRemoteDataSource();

  Future<List<Topics>> getData() async {
    final topicsRef =
        await FirebaseFirestore.instance.collection('topics').get();
    List<Topics> data = [];
    for (var element in topicsRef.docs) {
      data.add(
        Topics(
          element.id,
          element.data()['name'],
        ),
      );
    }
    return data;
  }
}
