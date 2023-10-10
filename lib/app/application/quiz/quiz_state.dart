part of 'quiz_bloc.dart';

@freezed
class QuizState with _$QuizState {
  const QuizState._();
  const factory QuizState({
    required bool isLoading,
    required Option<Either<AppFailure, QuizSuccess>> failureOrSuccessOption,
    required Option<List<Quiz>> quizListOption,
  }) = _QuizState;

  factory QuizState.init() => QuizState(
        isLoading: false,
        failureOrSuccessOption: none(),
        quizListOption: none(),
      );

  QuizState get unmodified => copyWith(
        isLoading: false,
        failureOrSuccessOption: none(),
      );

  QuizState get loading => unmodified.copyWith(isLoading: true);

  List<Quiz> get quizList => quizListOption.fold(() => [], (val) => val);

  List<Quiz> get randomQuizList {
    List<Quiz> data = List.from(quizList);
    data.shuffle();
    return data.take(5).toList();
  }
}
