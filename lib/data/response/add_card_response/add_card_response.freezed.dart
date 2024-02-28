// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_card_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddCardResponse _$AddCardResponseFromJson(Map<String, dynamic> json) {
  return _AddCardResponse.fromJson(json);
}

/// @nodoc
mixin _$AddCardResponse {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddCardResponseCopyWith<AddCardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCardResponseCopyWith<$Res> {
  factory $AddCardResponseCopyWith(
          AddCardResponse value, $Res Function(AddCardResponse) then) =
      _$AddCardResponseCopyWithImpl<$Res, AddCardResponse>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$AddCardResponseCopyWithImpl<$Res, $Val extends AddCardResponse>
    implements $AddCardResponseCopyWith<$Res> {
  _$AddCardResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$AddCardResponseImplCopyWith<$Res>
    implements $AddCardResponseCopyWith<$Res> {
  factory _$$AddCardResponseImplCopyWith(_$AddCardResponseImpl value,
          $Res Function(_$AddCardResponseImpl) then) =
      __$$AddCardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AddCardResponseImplCopyWithImpl<$Res>
    extends _$AddCardResponseCopyWithImpl<$Res, _$AddCardResponseImpl>
    implements _$$AddCardResponseImplCopyWith<$Res> {
  __$$AddCardResponseImplCopyWithImpl(
      _$AddCardResponseImpl _value, $Res Function(_$AddCardResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AddCardResponseImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddCardResponseImpl implements _AddCardResponse {
  const _$AddCardResponseImpl(this.message);

  factory _$AddCardResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddCardResponseImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'AddCardResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCardResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCardResponseImplCopyWith<_$AddCardResponseImpl> get copyWith =>
      __$$AddCardResponseImplCopyWithImpl<_$AddCardResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddCardResponseImplToJson(
      this,
    );
  }
}

abstract class _AddCardResponse implements AddCardResponse {
  const factory _AddCardResponse(final String message) = _$AddCardResponseImpl;

  factory _AddCardResponse.fromJson(Map<String, dynamic> json) =
      _$AddCardResponseImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$AddCardResponseImplCopyWith<_$AddCardResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
