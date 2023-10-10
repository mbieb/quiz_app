import 'package:freezed_annotation/freezed_annotation.dart';
part 'quiz.freezed.dart';

@freezed
class Quiz with _$Quiz {
  const factory Quiz({
    String? name,
    String? topicId,
    List<Question>? questions,
  }) = _Quiz;
}

@freezed
class Question with _$Question {
  const Question._();
  const factory Question({
    String? question,
    String? correctAnswerId,
    String? userAnswerId,
    String? imgUrl,
    List<Answer>? answers,
  }) = _Question;

  List<Answer> getRandomAnswer() {
    return List.from(answers ?? [])..shuffle();
  }
}

@freezed
class Answer with _$Answer {
  const factory Answer({
    String? id,
    String? text,
  }) = _Answer;
}
