// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_verify_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginVerifyResponseImpl _$$LoginVerifyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginVerifyResponseImpl(
      json['refresh-token'] as String,
      json['access-token'] as String,
    );

Map<String, dynamic> _$$LoginVerifyResponseImplToJson(
        _$LoginVerifyResponseImpl instance) =>
    <String, dynamic>{
      'refresh-token': instance.refreshToken,
      'access-token': instance.accessToken,
    };
