import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_app/app/domain/topics/topics.dart';
part 'topics_success.freezed.dart';

@freezed
class TopicsSuccess with _$TopicsSuccess {
  const factory TopicsSuccess(List<Topics> data) = _TopicsSuccess;
}
