import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz_app/app/domain/failures/failures.dart';
import 'package:quiz_app/app/domain/topics/i_topics_repository.dart';
import 'package:quiz_app/app/domain/topics/topics_success/topics_success.dart';
import 'package:quiz_app/app/infrastructure/exception/exception.dart';
import 'package:quiz_app/app/infrastructure/topics/topics_remote_data_source.dart';

@LazySingleton(as: ITopicsRepository)
class TopicsRepository implements ITopicsRepository {
  final TopicsRemoteDataSource _topicsRemoteDataSource;

  TopicsRepository(
    this._topicsRemoteDataSource,
  );

  @override
  Future<Either<AppFailure, TopicsSuccess>> getData() async {
    try {
      final data = await _topicsRemoteDataSource.getData();
      return right(TopicsSuccess(data));
    } catch (e, stack) {
      return left(dynamicErrorToFailure(e, stack));
    }
  }
}
