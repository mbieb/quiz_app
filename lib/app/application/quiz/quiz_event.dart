part of 'quiz_bloc.dart';

@freezed
class QuizEvent with _$QuizEvent {
  const factory QuizEvent.started({
    required String mode,
    String? topicId,
  }) = _Started;
  const factory QuizEvent.fetchData() = _FetchData;
}
