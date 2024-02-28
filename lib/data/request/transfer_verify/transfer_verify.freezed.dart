// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_verify.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransferVerifyRequest _$TransferVerifyRequestFromJson(
    Map<String, dynamic> json) {
  return _TransferVerifyRequest.fromJson(json);
}

/// @nodoc
mixin _$TransferVerifyRequest {
  String get token => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransferVerifyRequestCopyWith<TransferVerifyRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferVerifyRequestCopyWith<$Res> {
  factory $TransferVerifyRequestCopyWith(TransferVerifyRequest value,
          $Res Function(TransferVerifyRequest) then) =
      _$TransferVerifyRequestCopyWithImpl<$Res, TransferVerifyRequest>;
  @useResult
  $Res call({String token, String code});
}

/// @nodoc
class _$TransferVerifyRequestCopyWithImpl<$Res,
        $Val extends TransferVerifyRequest>
    implements $TransferVerifyRequestCopyWith<$Res> {
  _$TransferVerifyRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$TransferVerifyRequestImplCopyWith<$Res>
    implements $TransferVerifyRequestCopyWith<$Res> {
  factory _$$TransferVerifyRequestImplCopyWith(
          _$TransferVerifyRequestImpl value,
          $Res Function(_$TransferVerifyRequestImpl) then) =
      __$$TransferVerifyRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String code});
}

/// @nodoc
class __$$TransferVerifyRequestImplCopyWithImpl<$Res>
    extends _$TransferVerifyRequestCopyWithImpl<$Res,
        _$TransferVerifyRequestImpl>
    implements _$$TransferVerifyRequestImplCopyWith<$Res> {
  __$$TransferVerifyRequestImplCopyWithImpl(_$TransferVerifyRequestImpl _value,
      $Res Function(_$TransferVerifyRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? code = null,
  }) {
    return _then(_$TransferVerifyRequestImpl(
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
class _$TransferVerifyRequestImpl implements _TransferVerifyRequest {
  const _$TransferVerifyRequestImpl(this.token, this.code);

  factory _$TransferVerifyRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransferVerifyRequestImplFromJson(json);

  @override
  final String token;
  @override
  final String code;

  @override
  String toString() {
    return 'TransferVerifyRequest(token: $token, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferVerifyRequestImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferVerifyRequestImplCopyWith<_$TransferVerifyRequestImpl>
      get copyWith => __$$TransferVerifyRequestImplCopyWithImpl<
          _$TransferVerifyRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransferVerifyRequestImplToJson(
      this,
    );
  }
}

abstract class _TransferVerifyRequest implements TransferVerifyRequest {
  const factory _TransferVerifyRequest(final String token, final String code) =
      _$TransferVerifyRequestImpl;

  factory _TransferVerifyRequest.fromJson(Map<String, dynamic> json) =
      _$TransferVerifyRequestImpl.fromJson;

  @override
  String get token;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$TransferVerifyRequestImplCopyWith<_$TransferVerifyRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
