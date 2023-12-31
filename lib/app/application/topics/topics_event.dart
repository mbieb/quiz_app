part of 'topics_bloc.dart';

@freezed
class TopicsEvent with _$TopicsEvent {
  const factory TopicsEvent.started() = _Started;
  const factory TopicsEvent.searchTopics(String topic) = _SearchTopic;
}
