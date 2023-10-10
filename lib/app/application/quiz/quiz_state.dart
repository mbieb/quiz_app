part of 'quiz_bloc.dart';

@freezed
class QuizState with _$QuizState {
  const QuizState._();
  const factory QuizState({
    required bool isLoading,
    required Option<Either<AppFailure, QuizSuccess>> failureOrSuccessOption,
    required Option<List<Quiz>> quizListOption,
    required Option<List<Question>> questionListOption,
  }) = _QuizState;

  factory QuizState.init() => QuizState(
        isLoading: false,
        failureOrSuccessOption: none(),
        quizListOption: none(),
        questionListOption: none(),
      );

  QuizState get unmodified => copyWith(
        isLoading: false,
        failureOrSuccessOption: none(),
      );

  QuizState get loading => unmodified.copyWith(isLoading: true);

  List<Quiz> get quizList => quizListOption.fold(() => [], (val) => val);

  List<Question> get questionList =>
      questionListOption.fold(() => [], (val) => val);

  List<Question> get getRandomQuestionList {
    List<Question> allQuestions = [];

    for (Quiz quiz in quizList) {
      if (quiz.questions != null) {
        allQuestions.addAll(quiz.questions!);
      }
    }

    if (allQuestions.isEmpty) {
      return [];
    }

    List<Question> shuffledQuestions = List.from(allQuestions)..shuffle();

    List<Question> randomQuestions = shuffledQuestions.take(5).toList();

    return randomQuestions;
  }

  List<Question> getQuestionsByTopicId(String topicId) {
    List<Question> questionsInTopic = [];

    for (Quiz quiz in quizList) {
      if (quiz.topicId == topicId && quiz.questions != null) {
        questionsInTopic.addAll(quiz.questions!);
      }
    }

    if (questionsInTopic.isEmpty) {
      return [];
    }

    List<Question> shuffledQuestions = List.from(questionsInTopic)..shuffle();

    List<Question> randomQuestions = shuffledQuestions.take(5).toList();

    return randomQuestions;
  }
}
