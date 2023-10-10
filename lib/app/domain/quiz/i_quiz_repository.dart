import 'package:dartz/dartz.dart';
import 'package:quiz_app/app/domain/failures/failures.dart';
import 'package:quiz_app/app/domain/quiz/quiz_success/quiz_success.dart';

abstract class IQuizRepository {
  Future<Either<AppFailure, QuizSuccess>> getData();
}
