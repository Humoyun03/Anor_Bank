// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_verify_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginVerifyRequest _$LoginVerifyRequestFromJson(Map<String, dynamic> json) {
  return _LoginVerifyRequest.fromJson(json);
}

/// @nodoc
mixin _$LoginVerifyRequest {
  String get token => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginVerifyRequestCopyWith<LoginVerifyRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginVerifyRequestCopyWith<$Res> {
  factory $LoginVerifyRequestCopyWith(
          LoginVerifyRequest value, $Res Function(LoginVerifyRequest) then) =
      _$LoginVerifyRequestCopyWithImpl<$Res, LoginVerifyRequest>;
  @useResult
  $Res call({String token, String code});
}

/// @nodoc
class _$LoginVerifyRequestCopyWithImpl<$Res, $Val extends LoginVerifyRequest>
    implements $LoginVerifyRequestCopyWith<$Res> {
  _$LoginVerifyRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$LoginVerifyRequestImplCopyWith<$Res>
    implements $LoginVerifyRequestCopyWith<$Res> {
  factory _$$LoginVerifyRequestImplCopyWith(_$LoginVerifyRequestImpl value,
          $Res Function(_$LoginVerifyRequestImpl) then) =
      __$$LoginVerifyRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String code});
}

/// @nodoc
class __$$LoginVerifyRequestImplCopyWithImpl<$Res>
    extends _$LoginVerifyRequestCopyWithImpl<$Res, _$LoginVerifyRequestImpl>
    implements _$$LoginVerifyRequestImplCopyWith<$Res> {
  __$$LoginVerifyRequestImplCopyWithImpl(_$LoginVerifyRequestImpl _value,
      $Res Function(_$LoginVerifyRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? code = null,
  }) {
    return _then(_$LoginVerifyRequestImpl(
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
@JsonSerializable()
class _$LoginVerifyRequestImpl implements _LoginVerifyRequest {
  const _$LoginVerifyRequestImpl(this.token, this.code);

  factory _$LoginVerifyRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginVerifyRequestImplFromJson(json);

  @override
  final String token;
  @override
  final String code;

  @override
  String toString() {
    return 'LoginVerifyRequest(token: $token, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginVerifyRequestImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginVerifyRequestImplCopyWith<_$LoginVerifyRequestImpl> get copyWith =>
      __$$LoginVerifyRequestImplCopyWithImpl<_$LoginVerifyRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginVerifyRequestImplToJson(
      this,
    );
  }
}

abstract class _LoginVerifyRequest implements LoginVerifyRequest {
  const factory _LoginVerifyRequest(final String token, final String code) =
      _$LoginVerifyRequestImpl;

  factory _LoginVerifyRequest.fromJson(Map<String, dynamic> json) =
      _$LoginVerifyRequestImpl.fromJson;

  @override
  String get token;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$LoginVerifyRequestImplCopyWith<_$LoginVerifyRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
