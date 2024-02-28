// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_resend_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransferResendResponse _$TransferResendResponseFromJson(
    Map<String, dynamic> json) {
  return _TransferResendResponse.fromJson(json);
}

/// @nodoc
mixin _$TransferResendResponse {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransferResendResponseCopyWith<TransferResendResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferResendResponseCopyWith<$Res> {
  factory $TransferResendResponseCopyWith(TransferResendResponse value,
          $Res Function(TransferResendResponse) then) =
      _$TransferResendResponseCopyWithImpl<$Res, TransferResendResponse>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$TransferResendResponseCopyWithImpl<$Res,
        $Val extends TransferResendResponse>
    implements $TransferResendResponseCopyWith<$Res> {
  _$TransferResendResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransferResendResponseImplCopyWith<$Res>
    implements $TransferResendResponseCopyWith<$Res> {
  factory _$$TransferResendResponseImplCopyWith(
          _$TransferResendResponseImpl value,
          $Res Function(_$TransferResendResponseImpl) then) =
      __$$TransferResendResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$TransferResendResponseImplCopyWithImpl<$Res>
    extends _$TransferResendResponseCopyWithImpl<$Res,
        _$TransferResendResponseImpl>
    implements _$$TransferResendResponseImplCopyWith<$Res> {
  __$$TransferResendResponseImplCopyWithImpl(
      _$TransferResendResponseImpl _value,
      $Res Function(_$TransferResendResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$TransferResendResponseImpl(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$TransferResendResponseImpl implements _TransferResendResponse {
  const _$TransferResendResponseImpl(this.token);

  factory _$TransferResendResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransferResendResponseImplFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'TransferResendResponse(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferResendResponseImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferResendResponseImplCopyWith<_$TransferResendResponseImpl>
      get copyWith => __$$TransferResendResponseImplCopyWithImpl<
          _$TransferResendResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransferResendResponseImplToJson(
      this,
    );
  }
}

abstract class _TransferResendResponse implements TransferResendResponse {
  const factory _TransferResendResponse(final String token) =
      _$TransferResendResponseImpl;

  factory _TransferResendResponse.fromJson(Map<String, dynamic> json) =
      _$TransferResendResponseImpl.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$TransferResendResponseImplCopyWith<_$TransferResendResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
