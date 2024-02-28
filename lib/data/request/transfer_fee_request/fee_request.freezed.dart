// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fee_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeeRequest _$FeeRequestFromJson(Map<String, dynamic> json) {
  return _FeeRequest.fromJson(json);
}

/// @nodoc
mixin _$FeeRequest {
  @JsonKey(name: "sender-id")
  String get senderid => throw _privateConstructorUsedError;
  String get receiver => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeeRequestCopyWith<FeeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeeRequestCopyWith<$Res> {
  factory $FeeRequestCopyWith(
          FeeRequest value, $Res Function(FeeRequest) then) =
      _$FeeRequestCopyWithImpl<$Res, FeeRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "sender-id") String senderid,
      String receiver,
      int amount});
}

/// @nodoc
class _$FeeRequestCopyWithImpl<$Res, $Val extends FeeRequest>
    implements $FeeRequestCopyWith<$Res> {
  _$FeeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderid = null,
    Object? receiver = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      senderid: null == senderid
          ? _value.senderid
          : senderid // ignore: cast_nullable_to_non_nullable
              as String,
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeeRequestImplCopyWith<$Res>
    implements $FeeRequestCopyWith<$Res> {
  factory _$$FeeRequestImplCopyWith(
          _$FeeRequestImpl value, $Res Function(_$FeeRequestImpl) then) =
      __$$FeeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "sender-id") String senderid,
      String receiver,
      int amount});
}

/// @nodoc
class __$$FeeRequestImplCopyWithImpl<$Res>
    extends _$FeeRequestCopyWithImpl<$Res, _$FeeRequestImpl>
    implements _$$FeeRequestImplCopyWith<$Res> {
  __$$FeeRequestImplCopyWithImpl(
      _$FeeRequestImpl _value, $Res Function(_$FeeRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderid = null,
    Object? receiver = null,
    Object? amount = null,
  }) {
    return _then(_$FeeRequestImpl(
      null == senderid
          ? _value.senderid
          : senderid // ignore: cast_nullable_to_non_nullable
              as String,
      null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$FeeRequestImpl implements _FeeRequest {
  const _$FeeRequestImpl(
      @JsonKey(name: "sender-id") this.senderid, this.receiver, this.amount);

  factory _$FeeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeeRequestImplFromJson(json);

  @override
  @JsonKey(name: "sender-id")
  final String senderid;
  @override
  final String receiver;
  @override
  final int amount;

  @override
  String toString() {
    return 'FeeRequest(senderid: $senderid, receiver: $receiver, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeeRequestImpl &&
            (identical(other.senderid, senderid) ||
                other.senderid == senderid) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, senderid, receiver, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeeRequestImplCopyWith<_$FeeRequestImpl> get copyWith =>
      __$$FeeRequestImplCopyWithImpl<_$FeeRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeeRequestImplToJson(
      this,
    );
  }
}

abstract class _FeeRequest implements FeeRequest {
  const factory _FeeRequest(@JsonKey(name: "sender-id") final String senderid,
      final String receiver, final int amount) = _$FeeRequestImpl;

  factory _FeeRequest.fromJson(Map<String, dynamic> json) =
      _$FeeRequestImpl.fromJson;

  @override
  @JsonKey(name: "sender-id")
  String get senderid;
  @override
  String get receiver;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$FeeRequestImplCopyWith<_$FeeRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
