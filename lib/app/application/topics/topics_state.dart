part of 'topics_bloc.dart';

@freezed
class TopicsState with _$TopicsState {
  const TopicsState._();
  const factory TopicsState({
    required bool isLoading,
    required Option<Either<AppFailure, TopicsSuccess>> failureOrSuccessOption,
    required Option<List<Topics>> topicsOption,
    required Option<List<Topics>> topicsSearchOption,
  }) = _TopicsState;
  factory TopicsState.init() => TopicsState(
        isLoading: false,
        topicsOption: none(),
        topicsSearchOption: none(),
        failureOrSuccessOption: none(),
      );

  TopicsState get unmodified => copyWith(
        isLoading: false,
        failureOrSuccessOption: none(),
      );

  TopicsState get loading => unmodified.copyWith(isLoading: true);

  List<Topics> get topicList => topicsOption.fold(() => [], (val) => val);
  List<Topics> get topicSearchList =>
      topicsSearchOption.fold(() => [], (val) => val);
}
