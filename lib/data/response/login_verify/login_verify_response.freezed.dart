// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_verify_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginVerifyResponse _$LoginVerifyResponseFromJson(Map<String, dynamic> json) {
  return _LoginVerifyResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginVerifyResponse {
  @JsonKey(name: "refresh-token")
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: "access-token")
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginVerifyResponseCopyWith<LoginVerifyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginVerifyResponseCopyWith<$Res> {
  factory $LoginVerifyResponseCopyWith(
          LoginVerifyResponse value, $Res Function(LoginVerifyResponse) then) =
      _$LoginVerifyResponseCopyWithImpl<$Res, LoginVerifyResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "refresh-token") String refreshToken,
      @JsonKey(name: "access-token") String accessToken});
}

/// @nodoc
class _$LoginVerifyResponseCopyWithImpl<$Res, $Val extends LoginVerifyResponse>
    implements $LoginVerifyResponseCopyWith<$Res> {
  _$LoginVerifyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? accessToken = null,
  }) {
    return _then(_value.copyWith(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginVerifyResponseImplCopyWith<$Res>
    implements $LoginVerifyResponseCopyWith<$Res> {
  factory _$$LoginVerifyResponseImplCopyWith(_$LoginVerifyResponseImpl value,
          $Res Function(_$LoginVerifyResponseImpl) then) =
      __$$LoginVerifyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "refresh-token") String refreshToken,
      @JsonKey(name: "access-token") String accessToken});
}

/// @nodoc
class __$$LoginVerifyResponseImplCopyWithImpl<$Res>
    extends _$LoginVerifyResponseCopyWithImpl<$Res, _$LoginVerifyResponseImpl>
    implements _$$LoginVerifyResponseImplCopyWith<$Res> {
  __$$LoginVerifyResponseImplCopyWithImpl(_$LoginVerifyResponseImpl _value,
      $Res Function(_$LoginVerifyResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? accessToken = null,
  }) {
    return _then(_$LoginVerifyResponseImpl(
      null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$LoginVerifyResponseImpl implements _LoginVerifyResponse {
  const _$LoginVerifyResponseImpl(
      @JsonKey(name: "refresh-token") this.refreshToken,
      @JsonKey(name: "access-token") this.accessToken);

  factory _$LoginVerifyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginVerifyResponseImplFromJson(json);

  @override
  @JsonKey(name: "refresh-token")
  final String refreshToken;
  @override
  @JsonKey(name: "access-token")
  final String accessToken;

  @override
  String toString() {
    return 'LoginVerifyResponse(refreshToken: $refreshToken, accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginVerifyResponseImpl &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginVerifyResponseImplCopyWith<_$LoginVerifyResponseImpl> get copyWith =>
      __$$LoginVerifyResponseImplCopyWithImpl<_$LoginVerifyResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginVerifyResponseImplToJson(
      this,
    );
  }
}

abstract class _LoginVerifyResponse implements LoginVerifyResponse {
  const factory _LoginVerifyResponse(
          @JsonKey(name: "refresh-token") final String refreshToken,
          @JsonKey(name: "access-token") final String accessToken) =
      _$LoginVerifyResponseImpl;

  factory _LoginVerifyResponse.fromJson(Map<String, dynamic> json) =
      _$LoginVerifyResponseImpl.fromJson;

  @override
  @JsonKey(name: "refresh-token")
  String get refreshToken;
  @override
  @JsonKey(name: "access-token")
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$LoginVerifyResponseImplCopyWith<_$LoginVerifyResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
