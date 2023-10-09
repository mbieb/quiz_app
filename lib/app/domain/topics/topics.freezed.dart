// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Topics {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopicsCopyWith<Topics> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicsCopyWith<$Res> {
  factory $TopicsCopyWith(Topics value, $Res Function(Topics) then) =
      _$TopicsCopyWithImpl<$Res, Topics>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$TopicsCopyWithImpl<$Res, $Val extends Topics>
    implements $TopicsCopyWith<$Res> {
  _$TopicsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopicsImplCopyWith<$Res> implements $TopicsCopyWith<$Res> {
  factory _$$TopicsImplCopyWith(
          _$TopicsImpl value, $Res Function(_$TopicsImpl) then) =
      __$$TopicsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$TopicsImplCopyWithImpl<$Res>
    extends _$TopicsCopyWithImpl<$Res, _$TopicsImpl>
    implements _$$TopicsImplCopyWith<$Res> {
  __$$TopicsImplCopyWithImpl(
      _$TopicsImpl _value, $Res Function(_$TopicsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$TopicsImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TopicsImpl implements _Topics {
  const _$TopicsImpl(this.id, this.name);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Topics(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicsImplCopyWith<_$TopicsImpl> get copyWith =>
      __$$TopicsImplCopyWithImpl<_$TopicsImpl>(this, _$identity);
}

abstract class _Topics implements Topics {
  const factory _Topics(final String? id, final String? name) = _$TopicsImpl;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$TopicsImplCopyWith<_$TopicsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
