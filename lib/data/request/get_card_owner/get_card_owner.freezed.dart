// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_card_owner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetCardOwnerRequest _$GetCardOwnerRequestFromJson(Map<String, dynamic> json) {
  return _GetCardOwnerRequest.fromJson(json);
}

/// @nodoc
mixin _$GetCardOwnerRequest {
  String get pan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCardOwnerRequestCopyWith<GetCardOwnerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCardOwnerRequestCopyWith<$Res> {
  factory $GetCardOwnerRequestCopyWith(
          GetCardOwnerRequest value, $Res Function(GetCardOwnerRequest) then) =
      _$GetCardOwnerRequestCopyWithImpl<$Res, GetCardOwnerRequest>;
  @useResult
  $Res call({String pan});
}

/// @nodoc
class _$GetCardOwnerRequestCopyWithImpl<$Res, $Val extends GetCardOwnerRequest>
    implements $GetCardOwnerRequestCopyWith<$Res> {
  _$GetCardOwnerRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pan = null,
  }) {
    return _then(_value.copyWith(
      pan: null == pan
          ? _value.pan
          : pan // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCardOwnerRequestImplCopyWith<$Res>
    implements $GetCardOwnerRequestCopyWith<$Res> {
  factory _$$GetCardOwnerRequestImplCopyWith(_$GetCardOwnerRequestImpl value,
          $Res Function(_$GetCardOwnerRequestImpl) then) =
      __$$GetCardOwnerRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pan});
}

/// @nodoc
class __$$GetCardOwnerRequestImplCopyWithImpl<$Res>
    extends _$GetCardOwnerRequestCopyWithImpl<$Res, _$GetCardOwnerRequestImpl>
    implements _$$GetCardOwnerRequestImplCopyWith<$Res> {
  __$$GetCardOwnerRequestImplCopyWithImpl(_$GetCardOwnerRequestImpl _value,
      $Res Function(_$GetCardOwnerRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pan = null,
  }) {
    return _then(_$GetCardOwnerRequestImpl(
      null == pan
          ? _value.pan
          : pan // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$GetCardOwnerRequestImpl implements _GetCardOwnerRequest {
  const _$GetCardOwnerRequestImpl(this.pan);

  factory _$GetCardOwnerRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCardOwnerRequestImplFromJson(json);

  @override
  final String pan;

  @override
  String toString() {
    return 'GetCardOwnerRequest(pan: $pan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCardOwnerRequestImpl &&
            (identical(other.pan, pan) || other.pan == pan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCardOwnerRequestImplCopyWith<_$GetCardOwnerRequestImpl> get copyWith =>
      __$$GetCardOwnerRequestImplCopyWithImpl<_$GetCardOwnerRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCardOwnerRequestImplToJson(
      this,
    );
  }
}

abstract class _GetCardOwnerRequest implements GetCardOwnerRequest {
  const factory _GetCardOwnerRequest(final String pan) =
      _$GetCardOwnerRequestImpl;

  factory _GetCardOwnerRequest.fromJson(Map<String, dynamic> json) =
      _$GetCardOwnerRequestImpl.fromJson;

  @override
  String get pan;
  @override
  @JsonKey(ignore: true)
  _$$GetCardOwnerRequestImplCopyWith<_$GetCardOwnerRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
