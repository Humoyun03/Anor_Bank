// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_verify_resonse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterVerifyResponse _$RegisterVerifyResponseFromJson(
    Map<String, dynamic> json) {
  return _RegisterVerifyResponse.fromJson(json);
}

/// @nodoc
mixin _$RegisterVerifyResponse {
  @JsonKey(name: "refresh-token")
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: "access-token")
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterVerifyResponseCopyWith<RegisterVerifyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterVerifyResponseCopyWith<$Res> {
  factory $RegisterVerifyResponseCopyWith(RegisterVerifyResponse value,
          $Res Function(RegisterVerifyResponse) then) =
      _$RegisterVerifyResponseCopyWithImpl<$Res, RegisterVerifyResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "refresh-token") String refreshToken,
      @JsonKey(name: "access-token") String accessToken});
}

/// @nodoc
class _$RegisterVerifyResponseCopyWithImpl<$Res,
        $Val extends RegisterVerifyResponse>
    implements $RegisterVerifyResponseCopyWith<$Res> {
  _$RegisterVerifyResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$RegisterVerifyResponseImplCopyWith<$Res>
    implements $RegisterVerifyResponseCopyWith<$Res> {
  factory _$$RegisterVerifyResponseImplCopyWith(
          _$RegisterVerifyResponseImpl value,
          $Res Function(_$RegisterVerifyResponseImpl) then) =
      __$$RegisterVerifyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "refresh-token") String refreshToken,
      @JsonKey(name: "access-token") String accessToken});
}

/// @nodoc
class __$$RegisterVerifyResponseImplCopyWithImpl<$Res>
    extends _$RegisterVerifyResponseCopyWithImpl<$Res,
        _$RegisterVerifyResponseImpl>
    implements _$$RegisterVerifyResponseImplCopyWith<$Res> {
  __$$RegisterVerifyResponseImplCopyWithImpl(
      _$RegisterVerifyResponseImpl _value,
      $Res Function(_$RegisterVerifyResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? accessToken = null,
  }) {
    return _then(_$RegisterVerifyResponseImpl(
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
class _$RegisterVerifyResponseImpl implements _RegisterVerifyResponse {
  const _$RegisterVerifyResponseImpl(
      @JsonKey(name: "refresh-token") this.refreshToken,
      @JsonKey(name: "access-token") this.accessToken);

  factory _$RegisterVerifyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterVerifyResponseImplFromJson(json);

  @override
  @JsonKey(name: "refresh-token")
  final String refreshToken;
  @override
  @JsonKey(name: "access-token")
  final String accessToken;

  @override
  String toString() {
    return 'RegisterVerifyResponse(refreshToken: $refreshToken, accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterVerifyResponseImpl &&
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
  _$$RegisterVerifyResponseImplCopyWith<_$RegisterVerifyResponseImpl>
      get copyWith => __$$RegisterVerifyResponseImplCopyWithImpl<
          _$RegisterVerifyResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterVerifyResponseImplToJson(
      this,
    );
  }
}

abstract class _RegisterVerifyResponse implements RegisterVerifyResponse {
  const factory _RegisterVerifyResponse(
          @JsonKey(name: "refresh-token") final String refreshToken,
          @JsonKey(name: "access-token") final String accessToken) =
      _$RegisterVerifyResponseImpl;

  factory _RegisterVerifyResponse.fromJson(Map<String, dynamic> json) =
      _$RegisterVerifyResponseImpl.fromJson;

  @override
  @JsonKey(name: "refresh-token")
  String get refreshToken;
  @override
  @JsonKey(name: "access-token")
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$RegisterVerifyResponseImplCopyWith<_$RegisterVerifyResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
