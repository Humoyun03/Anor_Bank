// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_total_balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetTotalBalance _$GetTotalBalanceFromJson(Map<String, dynamic> json) {
  return _GetTotalBalance.fromJson(json);
}

/// @nodoc
mixin _$GetTotalBalance {
  @JsonKey(name: "total-balance")
  int get totalbalance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTotalBalanceCopyWith<GetTotalBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTotalBalanceCopyWith<$Res> {
  factory $GetTotalBalanceCopyWith(
          GetTotalBalance value, $Res Function(GetTotalBalance) then) =
      _$GetTotalBalanceCopyWithImpl<$Res, GetTotalBalance>;
  @useResult
  $Res call({@JsonKey(name: "total-balance") int totalbalance});
}

/// @nodoc
class _$GetTotalBalanceCopyWithImpl<$Res, $Val extends GetTotalBalance>
    implements $GetTotalBalanceCopyWith<$Res> {
  _$GetTotalBalanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalbalance = null,
  }) {
    return _then(_value.copyWith(
      totalbalance: null == totalbalance
          ? _value.totalbalance
          : totalbalance // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetTotalBalanceImplCopyWith<$Res>
    implements $GetTotalBalanceCopyWith<$Res> {
  factory _$$GetTotalBalanceImplCopyWith(_$GetTotalBalanceImpl value,
          $Res Function(_$GetTotalBalanceImpl) then) =
      __$$GetTotalBalanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "total-balance") int totalbalance});
}

/// @nodoc
class __$$GetTotalBalanceImplCopyWithImpl<$Res>
    extends _$GetTotalBalanceCopyWithImpl<$Res, _$GetTotalBalanceImpl>
    implements _$$GetTotalBalanceImplCopyWith<$Res> {
  __$$GetTotalBalanceImplCopyWithImpl(
      _$GetTotalBalanceImpl _value, $Res Function(_$GetTotalBalanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalbalance = null,
  }) {
    return _then(_$GetTotalBalanceImpl(
      null == totalbalance
          ? _value.totalbalance
          : totalbalance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$GetTotalBalanceImpl implements _GetTotalBalance {
  const _$GetTotalBalanceImpl(
      @JsonKey(name: "total-balance") this.totalbalance);

  factory _$GetTotalBalanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetTotalBalanceImplFromJson(json);

  @override
  @JsonKey(name: "total-balance")
  final int totalbalance;

  @override
  String toString() {
    return 'GetTotalBalance(totalbalance: $totalbalance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTotalBalanceImpl &&
            (identical(other.totalbalance, totalbalance) ||
                other.totalbalance == totalbalance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalbalance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTotalBalanceImplCopyWith<_$GetTotalBalanceImpl> get copyWith =>
      __$$GetTotalBalanceImplCopyWithImpl<_$GetTotalBalanceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetTotalBalanceImplToJson(
      this,
    );
  }
}

abstract class _GetTotalBalance implements GetTotalBalance {
  const factory _GetTotalBalance(
          @JsonKey(name: "total-balance") final int totalbalance) =
      _$GetTotalBalanceImpl;

  factory _GetTotalBalance.fromJson(Map<String, dynamic> json) =
      _$GetTotalBalanceImpl.fromJson;

  @override
  @JsonKey(name: "total-balance")
  int get totalbalance;
  @override
  @JsonKey(ignore: true)
  _$$GetTotalBalanceImplCopyWith<_$GetTotalBalanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
