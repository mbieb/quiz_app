import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz_app/app/domain/failures/failures.dart';
import 'package:quiz_app/app/domain/quiz/i_quiz_repository.dart';
import 'package:quiz_app/app/domain/quiz/quiz_success/quiz_success.dart';
import 'package:quiz_app/app/infrastructure/exception/exception.dart';
import 'package:quiz_app/app/infrastructure/quiz/quiz_remote_data_source.dart';

@LazySingleton(as: IQuizRepository)
class QuizRepository implements IQuizRepository {
  final QuizRemoteDataSource _remoteDataSource;

  QuizRepository(this._remoteDataSource);

  @override
  Future<Either<AppFailure, QuizSuccess>> getData() async {
    try {
      final data = await _remoteDataSource.getData();
      return right(QuizSuccess(data));
    } catch (e, stack) {
      return left(dynamicErrorToFailure(e, stack));
    }
  }
}
