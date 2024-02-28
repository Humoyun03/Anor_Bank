// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateToken _$UpdateTokenFromJson(Map<String, dynamic> json) {
  return _UpdateToken.fromJson(json);
}

/// @nodoc
mixin _$UpdateToken {
  String get raw => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateTokenCopyWith<UpdateToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTokenCopyWith<$Res> {
  factory $UpdateTokenCopyWith(
          UpdateToken value, $Res Function(UpdateToken) then) =
      _$UpdateTokenCopyWithImpl<$Res, UpdateToken>;
  @useResult
  $Res call({String raw});
}

/// @nodoc
class _$UpdateTokenCopyWithImpl<$Res, $Val extends UpdateToken>
    implements $UpdateTokenCopyWith<$Res> {
  _$UpdateTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = null,
  }) {
    return _then(_value.copyWith(
      raw: null == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateTokenImplCopyWith<$Res>
    implements $UpdateTokenCopyWith<$Res> {
  factory _$$UpdateTokenImplCopyWith(
          _$UpdateTokenImpl value, $Res Function(_$UpdateTokenImpl) then) =
      __$$UpdateTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String raw});
}

/// @nodoc
class __$$UpdateTokenImplCopyWithImpl<$Res>
    extends _$UpdateTokenCopyWithImpl<$Res, _$UpdateTokenImpl>
    implements _$$UpdateTokenImplCopyWith<$Res> {
  __$$UpdateTokenImplCopyWithImpl(
      _$UpdateTokenImpl _value, $Res Function(_$UpdateTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = null,
  }) {
    return _then(_$UpdateTokenImpl(
      null == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$UpdateTokenImpl implements _UpdateToken {
  const _$UpdateTokenImpl(this.raw);

  factory _$UpdateTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTokenImplFromJson(json);

  @override
  final String raw;

  @override
  String toString() {
    return 'UpdateToken(raw: $raw)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTokenImpl &&
            (identical(other.raw, raw) || other.raw == raw));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, raw);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTokenImplCopyWith<_$UpdateTokenImpl> get copyWith =>
      __$$UpdateTokenImplCopyWithImpl<_$UpdateTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTokenImplToJson(
      this,
    );
  }
}

abstract class _UpdateToken implements UpdateToken {
  const factory _UpdateToken(final String raw) = _$UpdateTokenImpl;

  factory _UpdateToken.fromJson(Map<String, dynamic> json) =
      _$UpdateTokenImpl.fromJson;

  @override
  String get raw;
  @override
  @JsonKey(ignore: true)
  _$$UpdateTokenImplCopyWith<_$UpdateTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
