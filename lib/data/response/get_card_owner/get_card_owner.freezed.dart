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

GetCardOwnerResponse _$GetCardOwnerResponseFromJson(Map<String, dynamic> json) {
  return _GetCardOwnerResponse.fromJson(json);
}

/// @nodoc
mixin _$GetCardOwnerResponse {
  String get pan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCardOwnerResponseCopyWith<GetCardOwnerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCardOwnerResponseCopyWith<$Res> {
  factory $GetCardOwnerResponseCopyWith(GetCardOwnerResponse value,
          $Res Function(GetCardOwnerResponse) then) =
      _$GetCardOwnerResponseCopyWithImpl<$Res, GetCardOwnerResponse>;
  @useResult
  $Res call({String pan});
}

/// @nodoc
class _$GetCardOwnerResponseCopyWithImpl<$Res,
        $Val extends GetCardOwnerResponse>
    implements $GetCardOwnerResponseCopyWith<$Res> {
  _$GetCardOwnerResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$GetCardOwnerResponseImplCopyWith<$Res>
    implements $GetCardOwnerResponseCopyWith<$Res> {
  factory _$$GetCardOwnerResponseImplCopyWith(_$GetCardOwnerResponseImpl value,
          $Res Function(_$GetCardOwnerResponseImpl) then) =
      __$$GetCardOwnerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pan});
}

/// @nodoc
class __$$GetCardOwnerResponseImplCopyWithImpl<$Res>
    extends _$GetCardOwnerResponseCopyWithImpl<$Res, _$GetCardOwnerResponseImpl>
    implements _$$GetCardOwnerResponseImplCopyWith<$Res> {
  __$$GetCardOwnerResponseImplCopyWithImpl(_$GetCardOwnerResponseImpl _value,
      $Res Function(_$GetCardOwnerResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pan = null,
  }) {
    return _then(_$GetCardOwnerResponseImpl(
      null == pan
          ? _value.pan
          : pan // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$GetCardOwnerResponseImpl implements _GetCardOwnerResponse {
  const _$GetCardOwnerResponseImpl(this.pan);

  factory _$GetCardOwnerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCardOwnerResponseImplFromJson(json);

  @override
  final String pan;

  @override
  String toString() {
    return 'GetCardOwnerResponse(pan: $pan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCardOwnerResponseImpl &&
            (identical(other.pan, pan) || other.pan == pan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCardOwnerResponseImplCopyWith<_$GetCardOwnerResponseImpl>
      get copyWith =>
          __$$GetCardOwnerResponseImplCopyWithImpl<_$GetCardOwnerResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCardOwnerResponseImplToJson(
      this,
    );
  }
}

abstract class _GetCardOwnerResponse implements GetCardOwnerResponse {
  const factory _GetCardOwnerResponse(final String pan) =
      _$GetCardOwnerResponseImpl;

  factory _GetCardOwnerResponse.fromJson(Map<String, dynamic> json) =
      _$GetCardOwnerResponseImpl.fromJson;

  @override
  String get pan;
  @override
  @JsonKey(ignore: true)
  _$$GetCardOwnerResponseImplCopyWith<_$GetCardOwnerResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
