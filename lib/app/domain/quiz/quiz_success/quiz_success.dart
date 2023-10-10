import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_app/app/domain/quiz/quiz.dart';
part 'quiz_success.freezed.dart';

@freezed
class QuizSuccess with _$QuizSuccess {
  const factory QuizSuccess(List<Quiz> data) = _QuizSuccess;
}
