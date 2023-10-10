// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuizSuccess {
  List<Quiz> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizSuccessCopyWith<QuizSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizSuccessCopyWith<$Res> {
  factory $QuizSuccessCopyWith(
          QuizSuccess value, $Res Function(QuizSuccess) then) =
      _$QuizSuccessCopyWithImpl<$Res, QuizSuccess>;
  @useResult
  $Res call({List<Quiz> data});
}

/// @nodoc
class _$QuizSuccessCopyWithImpl<$Res, $Val extends QuizSuccess>
    implements $QuizSuccessCopyWith<$Res> {
  _$QuizSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizSuccessImplCopyWith<$Res>
    implements $QuizSuccessCopyWith<$Res> {
  factory _$$QuizSuccessImplCopyWith(
          _$QuizSuccessImpl value, $Res Function(_$QuizSuccessImpl) then) =
      __$$QuizSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Quiz> data});
}

/// @nodoc
class __$$QuizSuccessImplCopyWithImpl<$Res>
    extends _$QuizSuccessCopyWithImpl<$Res, _$QuizSuccessImpl>
    implements _$$QuizSuccessImplCopyWith<$Res> {
  __$$QuizSuccessImplCopyWithImpl(
      _$QuizSuccessImpl _value, $Res Function(_$QuizSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$QuizSuccessImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
    ));
  }
}

/// @nodoc

class _$QuizSuccessImpl implements _QuizSuccess {
  const _$QuizSuccessImpl(final List<Quiz> data) : _data = data;

  final List<Quiz> _data;
  @override
  List<Quiz> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'QuizSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizSuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizSuccessImplCopyWith<_$QuizSuccessImpl> get copyWith =>
      __$$QuizSuccessImplCopyWithImpl<_$QuizSuccessImpl>(this, _$identity);
}

abstract class _QuizSuccess implements QuizSuccess {
  const factory _QuizSuccess(final List<Quiz> data) = _$QuizSuccessImpl;

  @override
  List<Quiz> get data;
  @override
  @JsonKey(ignore: true)
  _$$QuizSuccessImplCopyWith<_$QuizSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
