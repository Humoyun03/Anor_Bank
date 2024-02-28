// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_verify.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransferVerifyRequestImpl _$$TransferVerifyRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$TransferVerifyRequestImpl(
      json['token'] as String,
      json['code'] as String,
    );

Map<String, dynamic> _$$TransferVerifyRequestImplToJson(
        _$TransferVerifyRequestImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'code': instance.code,
    };
