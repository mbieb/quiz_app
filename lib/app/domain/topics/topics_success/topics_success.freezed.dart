// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topics_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopicsSuccess {
  List<Topics> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopicsSuccessCopyWith<TopicsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicsSuccessCopyWith<$Res> {
  factory $TopicsSuccessCopyWith(
          TopicsSuccess value, $Res Function(TopicsSuccess) then) =
      _$TopicsSuccessCopyWithImpl<$Res, TopicsSuccess>;
  @useResult
  $Res call({List<Topics> data});
}

/// @nodoc
class _$TopicsSuccessCopyWithImpl<$Res, $Val extends TopicsSuccess>
    implements $TopicsSuccessCopyWith<$Res> {
  _$TopicsSuccessCopyWithImpl(this._value, this._then);

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
              as List<Topics>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopicsSuccessImplCopyWith<$Res>
    implements $TopicsSuccessCopyWith<$Res> {
  factory _$$TopicsSuccessImplCopyWith(
          _$TopicsSuccessImpl value, $Res Function(_$TopicsSuccessImpl) then) =
      __$$TopicsSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Topics> data});
}

/// @nodoc
class __$$TopicsSuccessImplCopyWithImpl<$Res>
    extends _$TopicsSuccessCopyWithImpl<$Res, _$TopicsSuccessImpl>
    implements _$$TopicsSuccessImplCopyWith<$Res> {
  __$$TopicsSuccessImplCopyWithImpl(
      _$TopicsSuccessImpl _value, $Res Function(_$TopicsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$TopicsSuccessImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Topics>,
    ));
  }
}

/// @nodoc

class _$TopicsSuccessImpl implements _TopicsSuccess {
  const _$TopicsSuccessImpl(final List<Topics> data) : _data = data;

  final List<Topics> _data;
  @override
  List<Topics> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'TopicsSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicsSuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicsSuccessImplCopyWith<_$TopicsSuccessImpl> get copyWith =>
      __$$TopicsSuccessImplCopyWithImpl<_$TopicsSuccessImpl>(this, _$identity);
}

abstract class _TopicsSuccess implements TopicsSuccess {
  const factory _TopicsSuccess(final List<Topics> data) = _$TopicsSuccessImpl;

  @override
  List<Topics> get data;
  @override
  @JsonKey(ignore: true)
  _$$TopicsSuccessImplCopyWith<_$TopicsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
