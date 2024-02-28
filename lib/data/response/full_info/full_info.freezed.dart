// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'full_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FullInfo _$FullInfoFromJson(Map<String, dynamic> json) {
  return _FullInfo.fromJson(json);
}

/// @nodoc
mixin _$FullInfo {
  @JsonKey(name: "first-name")
  String get firstname => throw _privateConstructorUsedError;
  @JsonKey(name: "last-name")
  String get lastname => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "born-date")
  int get bornDate => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FullInfoCopyWith<FullInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FullInfoCopyWith<$Res> {
  factory $FullInfoCopyWith(FullInfo value, $Res Function(FullInfo) then) =
      _$FullInfoCopyWithImpl<$Res, FullInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "first-name") String firstname,
      @JsonKey(name: "last-name") String lastname,
      String phone,
      @JsonKey(name: "born-date") int bornDate,
      int gender});
}

/// @nodoc
class _$FullInfoCopyWithImpl<$Res, $Val extends FullInfo>
    implements $FullInfoCopyWith<$Res> {
  _$FullInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? phone = null,
    Object? bornDate = null,
    Object? gender = null,
  }) {
    return _then(_value.copyWith(
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      bornDate: null == bornDate
          ? _value.bornDate
          : bornDate // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FullInfoImplCopyWith<$Res>
    implements $FullInfoCopyWith<$Res> {
  factory _$$FullInfoImplCopyWith(
          _$FullInfoImpl value, $Res Function(_$FullInfoImpl) then) =
      __$$FullInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "first-name") String firstname,
      @JsonKey(name: "last-name") String lastname,
      String phone,
      @JsonKey(name: "born-date") int bornDate,
      int gender});
}

/// @nodoc
class __$$FullInfoImplCopyWithImpl<$Res>
    extends _$FullInfoCopyWithImpl<$Res, _$FullInfoImpl>
    implements _$$FullInfoImplCopyWith<$Res> {
  __$$FullInfoImplCopyWithImpl(
      _$FullInfoImpl _value, $Res Function(_$FullInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? phone = null,
    Object? bornDate = null,
    Object? gender = null,
  }) {
    return _then(_$FullInfoImpl(
      null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      null == bornDate
          ? _value.bornDate
          : bornDate // ignore: cast_nullable_to_non_nullable
              as int,
      null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FullInfoImpl implements _FullInfo {
  const _$FullInfoImpl(
      @JsonKey(name: "first-name") this.firstname,
      @JsonKey(name: "last-name") this.lastname,
      this.phone,
      @JsonKey(name: "born-date") this.bornDate,
      this.gender);

  factory _$FullInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FullInfoImplFromJson(json);

  @override
  @JsonKey(name: "first-name")
  final String firstname;
  @override
  @JsonKey(name: "last-name")
  final String lastname;
  @override
  final String phone;
  @override
  @JsonKey(name: "born-date")
  final int bornDate;
  @override
  final int gender;

  @override
  String toString() {
    return 'FullInfo(firstname: $firstname, lastname: $lastname, phone: $phone, bornDate: $bornDate, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FullInfoImpl &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.bornDate, bornDate) ||
                other.bornDate == bornDate) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstname, lastname, phone, bornDate, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FullInfoImplCopyWith<_$FullInfoImpl> get copyWith =>
      __$$FullInfoImplCopyWithImpl<_$FullInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FullInfoImplToJson(
      this,
    );
  }
}

abstract class _FullInfo implements FullInfo {
  const factory _FullInfo(
      @JsonKey(name: "first-name") final String firstname,
      @JsonKey(name: "last-name") final String lastname,
      final String phone,
      @JsonKey(name: "born-date") final int bornDate,
      final int gender) = _$FullInfoImpl;

  factory _FullInfo.fromJson(Map<String, dynamic> json) =
      _$FullInfoImpl.fromJson;

  @override
  @JsonKey(name: "first-name")
  String get firstname;
  @override
  @JsonKey(name: "last-name")
  String get lastname;
  @override
  String get phone;
  @override
  @JsonKey(name: "born-date")
  int get bornDate;
  @override
  int get gender;
  @override
  @JsonKey(ignore: true)
  _$$FullInfoImplCopyWith<_$FullInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
