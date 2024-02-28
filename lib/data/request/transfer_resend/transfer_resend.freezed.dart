// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_resend.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransferResendRequest _$TransferResendRequestFromJson(
    Map<String, dynamic> json) {
  return _TransferResendRequest.fromJson(json);
}

/// @nodoc
mixin _$TransferResendRequest {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransferResendRequestCopyWith<TransferResendRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferResendRequestCopyWith<$Res> {
  factory $TransferResendRequestCopyWith(TransferResendRequest value,
          $Res Function(TransferResendRequest) then) =
      _$TransferResendRequestCopyWithImpl<$Res, TransferResendRequest>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$TransferResendRequestCopyWithImpl<$Res,
        $Val extends TransferResendRequest>
    implements $TransferResendRequestCopyWith<$Res> {
  _$TransferResendRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$TransferResendRequestImplCopyWith<$Res>
    implements $TransferResendRequestCopyWith<$Res> {
  factory _$$TransferResendRequestImplCopyWith(
          _$TransferResendRequestImpl value,
          $Res Function(_$TransferResendRequestImpl) then) =
      __$$TransferResendRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$TransferResendRequestImplCopyWithImpl<$Res>
    extends _$TransferResendRequestCopyWithImpl<$Res,
        _$TransferResendRequestImpl>
    implements _$$TransferResendRequestImplCopyWith<$Res> {
  __$$TransferResendRequestImplCopyWithImpl(_$TransferResendRequestImpl _value,
      $Res Function(_$TransferResendRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$TransferResendRequestImpl(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$TransferResendRequestImpl implements _TransferResendRequest {
  const _$TransferResendRequestImpl(this.token);

  factory _$TransferResendRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransferResendRequestImplFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'TransferResendRequest(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferResendRequestImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferResendRequestImplCopyWith<_$TransferResendRequestImpl>
      get copyWith => __$$TransferResendRequestImplCopyWithImpl<
          _$TransferResendRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransferResendRequestImplToJson(
      this,
    );
  }
}

abstract class _TransferResendRequest implements TransferResendRequest {
  const factory _TransferResendRequest(final String token) =
      _$TransferResendRequestImpl;

  factory _TransferResendRequest.fromJson(Map<String, dynamic> json) =
      _$TransferResendRequestImpl.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$TransferResendRequestImplCopyWith<_$TransferResendRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
