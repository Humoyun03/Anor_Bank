// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_transfer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LastTransfer _$LastTransferFromJson(Map<String, dynamic> json) {
  return _LastTransfer.fromJson(json);
}

/// @nodoc
mixin _$LastTransfer {
  String get type => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LastTransferCopyWith<LastTransfer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastTransferCopyWith<$Res> {
  factory $LastTransferCopyWith(
          LastTransfer value, $Res Function(LastTransfer) then) =
      _$LastTransferCopyWithImpl<$Res, LastTransfer>;
  @useResult
  $Res call({String type, String from, String to, int amount, int time});
}

/// @nodoc
class _$LastTransferCopyWithImpl<$Res, $Val extends LastTransfer>
    implements $LastTransferCopyWith<$Res> {
  _$LastTransferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? from = null,
    Object? to = null,
    Object? amount = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LastTransferImplCopyWith<$Res>
    implements $LastTransferCopyWith<$Res> {
  factory _$$LastTransferImplCopyWith(
          _$LastTransferImpl value, $Res Function(_$LastTransferImpl) then) =
      __$$LastTransferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String from, String to, int amount, int time});
}

/// @nodoc
class __$$LastTransferImplCopyWithImpl<$Res>
    extends _$LastTransferCopyWithImpl<$Res, _$LastTransferImpl>
    implements _$$LastTransferImplCopyWith<$Res> {
  __$$LastTransferImplCopyWithImpl(
      _$LastTransferImpl _value, $Res Function(_$LastTransferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? from = null,
    Object? to = null,
    Object? amount = null,
    Object? time = null,
  }) {
    return _then(_$LastTransferImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LastTransferImpl implements _LastTransfer {
  const _$LastTransferImpl(
      this.type, this.from, this.to, this.amount, this.time);

  factory _$LastTransferImpl.fromJson(Map<String, dynamic> json) =>
      _$$LastTransferImplFromJson(json);

  @override
  final String type;
  @override
  final String from;
  @override
  final String to;
  @override
  final int amount;
  @override
  final int time;

  @override
  String toString() {
    return 'LastTransfer(type: $type, from: $from, to: $to, amount: $amount, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastTransferImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, from, to, amount, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastTransferImplCopyWith<_$LastTransferImpl> get copyWith =>
      __$$LastTransferImplCopyWithImpl<_$LastTransferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LastTransferImplToJson(
      this,
    );
  }
}

abstract class _LastTransfer implements LastTransfer {
  const factory _LastTransfer(final String type, final String from,
      final String to, final int amount, final int time) = _$LastTransferImpl;

  factory _LastTransfer.fromJson(Map<String, dynamic> json) =
      _$LastTransferImpl.fromJson;

  @override
  String get type;
  @override
  String get from;
  @override
  String get to;
  @override
  int get amount;
  @override
  int get time;
  @override
  @JsonKey(ignore: true)
  _$$LastTransferImplCopyWith<_$LastTransferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
