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

TransferResponse _$TransferResponseFromJson(Map<String, dynamic> json) {
  return _TransferResponse.fromJson(json);
}

/// @nodoc
mixin _$TransferResponse {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransferResponseCopyWith<TransferResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferResponseCopyWith<$Res> {
  factory $TransferResponseCopyWith(
          TransferResponse value, $Res Function(TransferResponse) then) =
      _$TransferResponseCopyWithImpl<$Res, TransferResponse>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$TransferResponseCopyWithImpl<$Res, $Val extends TransferResponse>
    implements $TransferResponseCopyWith<$Res> {
  _$TransferResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransferResponseImplCopyWith<$Res>
    implements $TransferResponseCopyWith<$Res> {
  factory _$$TransferResponseImplCopyWith(_$TransferResponseImpl value,
          $Res Function(_$TransferResponseImpl) then) =
      __$$TransferResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$TransferResponseImplCopyWithImpl<$Res>
    extends _$TransferResponseCopyWithImpl<$Res, _$TransferResponseImpl>
    implements _$$TransferResponseImplCopyWith<$Res> {
  __$$TransferResponseImplCopyWithImpl(_$TransferResponseImpl _value,
      $Res Function(_$TransferResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$TransferResponseImpl(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$TransferResponseImpl implements _TransferResponse {
  const _$TransferResponseImpl(this.token);

  factory _$TransferResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransferResponseImplFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'TransferResponse(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferResponseImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferResponseImplCopyWith<_$TransferResponseImpl> get copyWith =>
      __$$TransferResponseImplCopyWithImpl<_$TransferResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransferResponseImplToJson(
      this,
    );
  }
}

abstract class _TransferResponse implements TransferResponse {
  const factory _TransferResponse(final String token) = _$TransferResponseImpl;

  factory _TransferResponse.fromJson(Map<String, dynamic> json) =
      _$TransferResponseImpl.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$TransferResponseImplCopyWith<_$TransferResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
