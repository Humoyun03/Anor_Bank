// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_toker_reponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateTokenResponse _$UpdateTokenResponseFromJson(Map<String, dynamic> json) {
  return _UpdateTokenResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdateTokenResponse {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateTokenResponseCopyWith<UpdateTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTokenResponseCopyWith<$Res> {
  factory $UpdateTokenResponseCopyWith(
          UpdateTokenResponse value, $Res Function(UpdateTokenResponse) then) =
      _$UpdateTokenResponseCopyWithImpl<$Res, UpdateTokenResponse>;
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class _$UpdateTokenResponseCopyWithImpl<$Res, $Val extends UpdateTokenResponse>
    implements $UpdateTokenResponseCopyWith<$Res> {
  _$UpdateTokenResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateTokenResponseImplCopyWith<$Res>
    implements $UpdateTokenResponseCopyWith<$Res> {
  factory _$$UpdateTokenResponseImplCopyWith(_$UpdateTokenResponseImpl value,
          $Res Function(_$UpdateTokenResponseImpl) then) =
      __$$UpdateTokenResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class __$$UpdateTokenResponseImplCopyWithImpl<$Res>
    extends _$UpdateTokenResponseCopyWithImpl<$Res, _$UpdateTokenResponseImpl>
    implements _$$UpdateTokenResponseImplCopyWith<$Res> {
  __$$UpdateTokenResponseImplCopyWithImpl(_$UpdateTokenResponseImpl _value,
      $Res Function(_$UpdateTokenResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$UpdateTokenResponseImpl(
      null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTokenResponseImpl implements _UpdateTokenResponse {
  const _$UpdateTokenResponseImpl(this.accessToken, this.refreshToken);

  factory _$UpdateTokenResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTokenResponseImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'UpdateTokenResponse(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTokenResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTokenResponseImplCopyWith<_$UpdateTokenResponseImpl> get copyWith =>
      __$$UpdateTokenResponseImplCopyWithImpl<_$UpdateTokenResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTokenResponseImplToJson(
      this,
    );
  }
}

abstract class _UpdateTokenResponse implements UpdateTokenResponse {
  const factory _UpdateTokenResponse(
          final String accessToken, final String refreshToken) =
      _$UpdateTokenResponseImpl;

  factory _UpdateTokenResponse.fromJson(Map<String, dynamic> json) =
      _$UpdateTokenResponseImpl.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$UpdateTokenResponseImplCopyWith<_$UpdateTokenResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
