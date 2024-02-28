// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_verify_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginVerifyRequestImpl _$$LoginVerifyRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginVerifyRequestImpl(
      json['token'] as String,
      json['code'] as String,
    );

Map<String, dynamic> _$$LoginVerifyRequestImplToJson(
        _$LoginVerifyRequestImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'code': instance.code,
    };
