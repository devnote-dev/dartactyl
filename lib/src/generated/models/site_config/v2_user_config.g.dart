// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../models/site_config/v2_user_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$__V2UserConfig _$$__V2UserConfigFromJson(Map<String, dynamic> json) =>
    _$__V2UserConfig(
      uuid: json['uuid'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      language: json['language'] as String,
      rootAdmin: json['root_admin'] as bool,
      useTotp: json['use_totp'] as bool,
      gravatar: json['gravatar'] as bool,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      avatarUrl: json['avatar_url'] as String,
      roleName: json['role_name'] as String,
    );

Map<String, dynamic> _$$__V2UserConfigToJson(_$__V2UserConfig instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'username': instance.username,
      'email': instance.email,
      'language': instance.language,
      'root_admin': instance.rootAdmin,
      'use_totp': instance.useTotp,
      'gravatar': instance.gravatar,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'avatar_url': instance.avatarUrl,
      'role_name': instance.roleName,
    };
