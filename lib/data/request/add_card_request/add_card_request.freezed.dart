// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_card_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddCardRequest _$AddCardRequestFromJson(Map<String, dynamic> json) {
  return _AddCardRequest.fromJson(json);
}

/// @nodoc
mixin _$AddCardRequest {
  String get pan => throw _privateConstructorUsedError;
  @JsonKey(name: "expired-year")
  String get expiredYear => throw _privateConstructorUsedError;
  @JsonKey(name: "expired-month")
  String get expiredMonth => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddCardRequestCopyWith<AddCardRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCardRequestCopyWith<$Res> {
  factory $AddCardRequestCopyWith(
          AddCardRequest value, $Res Function(AddCardRequest) then) =
      _$AddCardRequestCopyWithImpl<$Res, AddCardRequest>;
  @useResult
  $Res call(
      {String pan,
      @JsonKey(name: "expired-year") String expiredYear,
      @JsonKey(name: "expired-month") String expiredMonth,
      String name});
}

/// @nodoc
class _$AddCardRequestCopyWithImpl<$Res, $Val extends AddCardRequest>
    implements $AddCardRequestCopyWith<$Res> {
  _$AddCardRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pan = null,
    Object? expiredYear = null,
    Object? expiredMonth = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      pan: null == pan
          ? _value.pan
          : pan // ignore: cast_nullable_to_non_nullable
              as String,
      expiredYear: null == expiredYear
          ? _value.expiredYear
          : expiredYear // ignore: cast_nullable_to_non_nullable
              as String,
      expiredMonth: null == expiredMonth
          ? _value.expiredMonth
          : expiredMonth // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddCardRequestImplCopyWith<$Res>
    implements $AddCardRequestCopyWith<$Res> {
  factory _$$AddCardRequestImplCopyWith(_$AddCardRequestImpl value,
          $Res Function(_$AddCardRequestImpl) then) =
      __$$AddCardRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pan,
      @JsonKey(name: "expired-year") String expiredYear,
      @JsonKey(name: "expired-month") String expiredMonth,
      String name});
}

/// @nodoc
class __$$AddCardRequestImplCopyWithImpl<$Res>
    extends _$AddCardRequestCopyWithImpl<$Res, _$AddCardRequestImpl>
    implements _$$AddCardRequestImplCopyWith<$Res> {
  __$$AddCardRequestImplCopyWithImpl(
      _$AddCardRequestImpl _value, $Res Function(_$AddCardRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pan = null,
    Object? expiredYear = null,
    Object? expiredMonth = null,
    Object? name = null,
  }) {
    return _then(_$AddCardRequestImpl(
      null == pan
          ? _value.pan
          : pan // ignore: cast_nullable_to_non_nullable
              as String,
      null == expiredYear
          ? _value.expiredYear
          : expiredYear // ignore: cast_nullable_to_non_nullable
              as String,
      null == expiredMonth
          ? _value.expiredMonth
          : expiredMonth // ignore: cast_nullable_to_non_nullable
              as String,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddCardRequestImpl implements _AddCardRequest {
  const _$AddCardRequestImpl(
      this.pan,
      @JsonKey(name: "expired-year") this.expiredYear,
      @JsonKey(name: "expired-month") this.expiredMonth,
      this.name);

  factory _$AddCardRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddCardRequestImplFromJson(json);

  @override
  final String pan;
  @override
  @JsonKey(name: "expired-year")
  final String expiredYear;
  @override
  @JsonKey(name: "expired-month")
  final String expiredMonth;
  @override
  final String name;

  @override
  String toString() {
    return 'AddCardRequest(pan: $pan, expiredYear: $expiredYear, expiredMonth: $expiredMonth, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCardRequestImpl &&
            (identical(other.pan, pan) || other.pan == pan) &&
            (identical(other.expiredYear, expiredYear) ||
                other.expiredYear == expiredYear) &&
            (identical(other.expiredMonth, expiredMonth) ||
                other.expiredMonth == expiredMonth) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, pan, expiredYear, expiredMonth, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCardRequestImplCopyWith<_$AddCardRequestImpl> get copyWith =>
      __$$AddCardRequestImplCopyWithImpl<_$AddCardRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddCardRequestImplToJson(
      this,
    );
  }
}

abstract class _AddCardRequest implements AddCardRequest {
  const factory _AddCardRequest(
      final String pan,
      @JsonKey(name: "expired-year") final String expiredYear,
      @JsonKey(name: "expired-month") final String expiredMonth,
      final String name) = _$AddCardRequestImpl;

  factory _AddCardRequest.fromJson(Map<String, dynamic> json) =
      _$AddCardRequestImpl.fromJson;

  @override
  String get pan;
  @override
  @JsonKey(name: "expired-year")
  String get expiredYear;
  @override
  @JsonKey(name: "expired-month")
  String get expiredMonth;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$AddCardRequestImplCopyWith<_$AddCardRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
