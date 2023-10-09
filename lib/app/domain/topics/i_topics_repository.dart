import 'package:dartz/dartz.dart';
import 'package:quiz_app/app/domain/failures/failures.dart';
import 'package:quiz_app/app/domain/topics/topics_success/topics_success.dart';

abstract class ITopicsRepository {
  Future<Either<AppFailure, TopicsSuccess>> getData();
}
