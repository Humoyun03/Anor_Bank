// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_verify_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransferVerifyResponse _$TransferVerifyResponseFromJson(
    Map<String, dynamic> json) {
  return _TransferVerifyResponse.fromJson(json);
}

/// @nodoc
mixin _$TransferVerifyResponse {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransferVerifyResponseCopyWith<TransferVerifyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferVerifyResponseCopyWith<$Res> {
  factory $TransferVerifyResponseCopyWith(TransferVerifyResponse value,
          $Res Function(TransferVerifyResponse) then) =
      _$TransferVerifyResponseCopyWithImpl<$Res, TransferVerifyResponse>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$TransferVerifyResponseCopyWithImpl<$Res,
        $Val extends TransferVerifyResponse>
    implements $TransferVerifyResponseCopyWith<$Res> {
  _$TransferVerifyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransferVerifyResponseImplCopyWith<$Res>
    implements $TransferVerifyResponseCopyWith<$Res> {
  factory _$$TransferVerifyResponseImplCopyWith(
          _$TransferVerifyResponseImpl value,
          $Res Function(_$TransferVerifyResponseImpl) then) =
      __$$TransferVerifyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TransferVerifyResponseImplCopyWithImpl<$Res>
    extends _$TransferVerifyResponseCopyWithImpl<$Res,
        _$TransferVerifyResponseImpl>
    implements _$$TransferVerifyResponseImplCopyWith<$Res> {
  __$$TransferVerifyResponseImplCopyWithImpl(
      _$TransferVerifyResponseImpl _value,
      $Res Function(_$TransferVerifyResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TransferVerifyResponseImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$TransferVerifyResponseImpl implements _TransferVerifyResponse {
  const _$TransferVerifyResponseImpl(this.message);

  factory _$TransferVerifyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransferVerifyResponseImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'TransferVerifyResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferVerifyResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferVerifyResponseImplCopyWith<_$TransferVerifyResponseImpl>
      get copyWith => __$$TransferVerifyResponseImplCopyWithImpl<
          _$TransferVerifyResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransferVerifyResponseImplToJson(
      this,
    );
  }
}

abstract class _TransferVerifyResponse implements TransferVerifyResponse {
  const factory _TransferVerifyResponse(final String message) =
      _$TransferVerifyResponseImpl;

  factory _TransferVerifyResponse.fromJson(Map<String, dynamic> json) =
      _$TransferVerifyResponseImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$TransferVerifyResponseImplCopyWith<_$TransferVerifyResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
