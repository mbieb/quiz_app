// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../app/application/quiz/quiz_bloc.dart' as _i9;
import '../app/application/topics/topics_bloc.dart' as _i10;
import '../app/domain/quiz/i_quiz_repository.dart' as _i5;
import '../app/domain/topics/i_topics_repository.dart' as _i7;
import '../app/infrastructure/quiz/quiz_remote_data_source.dart' as _i3;
import '../app/infrastructure/quiz/quiz_repository.dart' as _i6;
import '../app/infrastructure/topics/topics_remote_data_source.dart' as _i4;
import '../app/infrastructure/topics/topics_repository.dart' as _i8;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.QuizRemoteDataSource>(() => _i3.QuizRemoteDataSource());
  gh.factory<_i4.TopicsRemoteDataSource>(() => _i4.TopicsRemoteDataSource());
  gh.lazySingleton<_i5.IQuizRepository>(
      () => _i6.QuizRepository(gh<_i3.QuizRemoteDataSource>()));
  gh.lazySingleton<_i7.ITopicsRepository>(
      () => _i8.TopicsRepository(gh<_i4.TopicsRemoteDataSource>()));
  gh.factory<_i9.QuizBloc>(() => _i9.QuizBloc(gh<_i5.IQuizRepository>()));
  gh.factory<_i10.TopicsBloc>(
      () => _i10.TopicsBloc(gh<_i7.ITopicsRepository>()));
  return getIt;
}
