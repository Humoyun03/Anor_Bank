// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_verify.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterVerify _$RegisterVerifyFromJson(Map<String, dynamic> json) {
  return _RegisterVerify.fromJson(json);
}

/// @nodoc
mixin _$RegisterVerify {
  String get token => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterVerifyCopyWith<RegisterVerify> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterVerifyCopyWith<$Res> {
  factory $RegisterVerifyCopyWith(
          RegisterVerify value, $Res Function(RegisterVerify) then) =
      _$RegisterVerifyCopyWithImpl<$Res, RegisterVerify>;
  @useResult
  $Res call({String token, String code});
}

/// @nodoc
class _$RegisterVerifyCopyWithImpl<$Res, $Val extends RegisterVerify>
    implements $RegisterVerifyCopyWith<$Res> {
  _$RegisterVerifyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterVerifyImplCopyWith<$Res>
    implements $RegisterVerifyCopyWith<$Res> {
  factory _$$RegisterVerifyImplCopyWith(_$RegisterVerifyImpl value,
          $Res Function(_$RegisterVerifyImpl) then) =
      __$$RegisterVerifyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String code});
}

/// @nodoc
class __$$RegisterVerifyImplCopyWithImpl<$Res>
    extends _$RegisterVerifyCopyWithImpl<$Res, _$RegisterVerifyImpl>
    implements _$$RegisterVerifyImplCopyWith<$Res> {
  __$$RegisterVerifyImplCopyWithImpl(
      _$RegisterVerifyImpl _value, $Res Function(_$RegisterVerifyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? code = null,
  }) {
    return _then(_$RegisterVerifyImpl(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$RegisterVerifyImpl implements _RegisterVerify {
  const _$RegisterVerifyImpl(this.token, this.code);

  factory _$RegisterVerifyImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterVerifyImplFromJson(json);

  @override
  final String token;
  @override
  final String code;

  @override
  String toString() {
    return 'RegisterVerify(token: $token, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterVerifyImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterVerifyImplCopyWith<_$RegisterVerifyImpl> get copyWith =>
      __$$RegisterVerifyImplCopyWithImpl<_$RegisterVerifyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterVerifyImplToJson(
      this,
    );
  }
}

abstract class _RegisterVerify implements RegisterVerify {
  const factory _RegisterVerify(final String token, final String code) =
      _$RegisterVerifyImpl;

  factory _RegisterVerify.fromJson(Map<String, dynamic> json) =
      _$RegisterVerifyImpl.fromJson;

  @override
  String get token;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$RegisterVerifyImplCopyWith<_$RegisterVerifyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
