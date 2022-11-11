// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constructor_rm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConstructorRM _$ConstructorRMFromJson(Map<String, dynamic> json) =>
    ConstructorRM(
      id: json['constructorId'] as String,
      name: json['name'] as String,
      nationality: json['nationality'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$ConstructorRMToJson(ConstructorRM instance) =>
    <String, dynamic>{
      'constructorId': instance.id,
      'name': instance.name,
      'nationality': instance.nationality,
      'url': instance.url,
    };
