// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fee_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeeResponse _$FeeResponseFromJson(Map<String, dynamic> json) {
  return _FeeResponse.fromJson(json);
}

/// @nodoc
mixin _$FeeResponse {
  String get fee => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeeResponseCopyWith<FeeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeeResponseCopyWith<$Res> {
  factory $FeeResponseCopyWith(
          FeeResponse value, $Res Function(FeeResponse) then) =
      _$FeeResponseCopyWithImpl<$Res, FeeResponse>;
  @useResult
  $Res call({String fee, int amount});
}

/// @nodoc
class _$FeeResponseCopyWithImpl<$Res, $Val extends FeeResponse>
    implements $FeeResponseCopyWith<$Res> {
  _$FeeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fee = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeeResponseImplCopyWith<$Res>
    implements $FeeResponseCopyWith<$Res> {
  factory _$$FeeResponseImplCopyWith(
          _$FeeResponseImpl value, $Res Function(_$FeeResponseImpl) then) =
      __$$FeeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fee, int amount});
}

/// @nodoc
class __$$FeeResponseImplCopyWithImpl<$Res>
    extends _$FeeResponseCopyWithImpl<$Res, _$FeeResponseImpl>
    implements _$$FeeResponseImplCopyWith<$Res> {
  __$$FeeResponseImplCopyWithImpl(
      _$FeeResponseImpl _value, $Res Function(_$FeeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fee = null,
    Object? amount = null,
  }) {
    return _then(_$FeeResponseImpl(
      null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String,
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeeResponseImpl implements _FeeResponse {
  const _$FeeResponseImpl(this.fee, this.amount);

  factory _$FeeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeeResponseImplFromJson(json);

  @override
  final String fee;
  @override
  final int amount;

  @override
  String toString() {
    return 'FeeResponse(fee: $fee, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeeResponseImpl &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fee, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeeResponseImplCopyWith<_$FeeResponseImpl> get copyWith =>
      __$$FeeResponseImplCopyWithImpl<_$FeeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeeResponseImplToJson(
      this,
    );
  }
}

abstract class _FeeResponse implements FeeResponse {
  const factory _FeeResponse(final String fee, final int amount) =
      _$FeeResponseImpl;

  factory _FeeResponse.fromJson(Map<String, dynamic> json) =
      _$FeeResponseImpl.fromJson;

  @override
  String get fee;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$FeeResponseImplCopyWith<_$FeeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
