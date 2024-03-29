// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransferRequest _$TransferRequestFromJson(Map<String, dynamic> json) {
  return _TransferRequest.fromJson(json);
}

/// @nodoc
mixin _$TransferRequest {
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "sender-id")
  String get senderId => throw _privateConstructorUsedError;
  @JsonKey(name: "receiver-pan")
  String get receiverPan => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransferRequestCopyWith<TransferRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferRequestCopyWith<$Res> {
  factory $TransferRequestCopyWith(
          TransferRequest value, $Res Function(TransferRequest) then) =
      _$TransferRequestCopyWithImpl<$Res, TransferRequest>;
  @useResult
  $Res call(
      {String type,
      @JsonKey(name: "sender-id") String senderId,
      @JsonKey(name: "receiver-pan") String receiverPan,
      int amount});
}

/// @nodoc
class _$TransferRequestCopyWithImpl<$Res, $Val extends TransferRequest>
    implements $TransferRequestCopyWith<$Res> {
  _$TransferRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? senderId = null,
    Object? receiverPan = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      receiverPan: null == receiverPan
          ? _value.receiverPan
          : receiverPan // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransferRequestImplCopyWith<$Res>
    implements $TransferRequestCopyWith<$Res> {
  factory _$$TransferRequestImplCopyWith(_$TransferRequestImpl value,
          $Res Function(_$TransferRequestImpl) then) =
      __$$TransferRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      @JsonKey(name: "sender-id") String senderId,
      @JsonKey(name: "receiver-pan") String receiverPan,
      int amount});
}

/// @nodoc
class __$$TransferRequestImplCopyWithImpl<$Res>
    extends _$TransferRequestCopyWithImpl<$Res, _$TransferRequestImpl>
    implements _$$TransferRequestImplCopyWith<$Res> {
  __$$TransferRequestImplCopyWithImpl(
      _$TransferRequestImpl _value, $Res Function(_$TransferRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? senderId = null,
    Object? receiverPan = null,
    Object? amount = null,
  }) {
    return _then(_$TransferRequestImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      null == receiverPan
          ? _value.receiverPan
          : receiverPan // ignore: cast_nullable_to_non_nullable
              as String,
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TransferRequestImpl implements _TransferRequest {
  const _$TransferRequestImpl(
      this.type,
      @JsonKey(name: "sender-id") this.senderId,
      @JsonKey(name: "receiver-pan") this.receiverPan,
      this.amount);

  factory _$TransferRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransferRequestImplFromJson(json);

  @override
  final String type;
  @override
  @JsonKey(name: "sender-id")
  final String senderId;
  @override
  @JsonKey(name: "receiver-pan")
  final String receiverPan;
  @override
  final int amount;

  @override
  String toString() {
    return 'TransferRequest(type: $type, senderId: $senderId, receiverPan: $receiverPan, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferRequestImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.receiverPan, receiverPan) ||
                other.receiverPan == receiverPan) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, senderId, receiverPan, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferRequestImplCopyWith<_$TransferRequestImpl> get copyWith =>
      __$$TransferRequestImplCopyWithImpl<_$TransferRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransferRequestImplToJson(
      this,
    );
  }
}

abstract class _TransferRequest implements TransferRequest {
  const factory _TransferRequest(
      final String type,
      @JsonKey(name: "sender-id") final String senderId,
      @JsonKey(name: "receiver-pan") final String receiverPan,
      final int amount) = _$TransferRequestImpl;

  factory _TransferRequest.fromJson(Map<String, dynamic> json) =
      _$TransferRequestImpl.fromJson;

  @override
  String get type;
  @override
  @JsonKey(name: "sender-id")
  String get senderId;
  @override
  @JsonKey(name: "receiver-pan")
  String get receiverPan;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$TransferRequestImplCopyWith<_$TransferRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
