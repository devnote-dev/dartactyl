// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../models/application_models/nest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Nest _$$_NestFromJson(Map<String, dynamic> json) => _$_Nest(
      id: json['id'] as int,
      uuid: json['uuid'] as String,
      author: json['author'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_NestToJson(_$_Nest instance) => <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'author': instance.author,
      'name': instance.name,
      'description': instance.description,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
