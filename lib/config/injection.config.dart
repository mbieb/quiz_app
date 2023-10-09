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

import '../app/application/topics/topics_bloc.dart' as _i6;
import '../app/domain/topics/i_topics_repository.dart' as _i4;
import '../app/infrastructure/topics/topics_remote_data_source.dart' as _i3;
import '../app/infrastructure/topics/topics_repository.dart' as _i5;

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
  gh.factory<_i3.TopicsRemoteDataSource>(() => _i3.TopicsRemoteDataSource());
  gh.lazySingleton<_i4.ITopicsRepository>(
      () => _i5.TopicsRepository(gh<_i3.TopicsRemoteDataSource>()));
  gh.factory<_i6.TopicsBloc>(() => _i6.TopicsBloc(gh<_i4.ITopicsRepository>()));
  return getIt;
}
