// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topics_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopicsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicsEventCopyWith<$Res> {
  factory $TopicsEventCopyWith(
          TopicsEvent value, $Res Function(TopicsEvent) then) =
      _$TopicsEventCopyWithImpl<$Res, TopicsEvent>;
}

/// @nodoc
class _$TopicsEventCopyWithImpl<$Res, $Val extends TopicsEvent>
    implements $TopicsEventCopyWith<$Res> {
  _$TopicsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$TopicsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'TopicsEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TopicsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$TopicsState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<AppFailure, TopicsSuccess>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<List<Topics>> get topicsOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopicsStateCopyWith<TopicsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicsStateCopyWith<$Res> {
  factory $TopicsStateCopyWith(
          TopicsState value, $Res Function(TopicsState) then) =
      _$TopicsStateCopyWithImpl<$Res, TopicsState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<AppFailure, TopicsSuccess>> failureOrSuccessOption,
      Option<List<Topics>> topicsOption});
}

/// @nodoc
class _$TopicsStateCopyWithImpl<$Res, $Val extends TopicsState>
    implements $TopicsStateCopyWith<$Res> {
  _$TopicsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrSuccessOption = null,
    Object? topicsOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, TopicsSuccess>>,
      topicsOption: null == topicsOption
          ? _value.topicsOption
          : topicsOption // ignore: cast_nullable_to_non_nullable
              as Option<List<Topics>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopicsStateImplCopyWith<$Res>
    implements $TopicsStateCopyWith<$Res> {
  factory _$$TopicsStateImplCopyWith(
          _$TopicsStateImpl value, $Res Function(_$TopicsStateImpl) then) =
      __$$TopicsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<AppFailure, TopicsSuccess>> failureOrSuccessOption,
      Option<List<Topics>> topicsOption});
}

/// @nodoc
class __$$TopicsStateImplCopyWithImpl<$Res>
    extends _$TopicsStateCopyWithImpl<$Res, _$TopicsStateImpl>
    implements _$$TopicsStateImplCopyWith<$Res> {
  __$$TopicsStateImplCopyWithImpl(
      _$TopicsStateImpl _value, $Res Function(_$TopicsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrSuccessOption = null,
    Object? topicsOption = null,
  }) {
    return _then(_$TopicsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, TopicsSuccess>>,
      topicsOption: null == topicsOption
          ? _value.topicsOption
          : topicsOption // ignore: cast_nullable_to_non_nullable
              as Option<List<Topics>>,
    ));
  }
}

/// @nodoc

class _$TopicsStateImpl extends _TopicsState {
  const _$TopicsStateImpl(
      {required this.isLoading,
      required this.failureOrSuccessOption,
      required this.topicsOption})
      : super._();

  @override
  final bool isLoading;
  @override
  final Option<Either<AppFailure, TopicsSuccess>> failureOrSuccessOption;
  @override
  final Option<List<Topics>> topicsOption;

  @override
  String toString() {
    return 'TopicsState(isLoading: $isLoading, failureOrSuccessOption: $failureOrSuccessOption, topicsOption: $topicsOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption) &&
            (identical(other.topicsOption, topicsOption) ||
                other.topicsOption == topicsOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, failureOrSuccessOption, topicsOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicsStateImplCopyWith<_$TopicsStateImpl> get copyWith =>
      __$$TopicsStateImplCopyWithImpl<_$TopicsStateImpl>(this, _$identity);
}

abstract class _TopicsState extends TopicsState {
  const factory _TopicsState(
      {required final bool isLoading,
      required final Option<Either<AppFailure, TopicsSuccess>>
          failureOrSuccessOption,
      required final Option<List<Topics>> topicsOption}) = _$TopicsStateImpl;
  const _TopicsState._() : super._();

  @override
  bool get isLoading;
  @override
  Option<Either<AppFailure, TopicsSuccess>> get failureOrSuccessOption;
  @override
  Option<List<Topics>> get topicsOption;
  @override
  @JsonKey(ignore: true)
  _$$TopicsStateImplCopyWith<_$TopicsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
