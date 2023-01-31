// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constructor_standing_rm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConstructorStandingRM _$ConstructorStandingRMFromJson(
        Map<String, dynamic> json) =>
    ConstructorStandingRM(
      constructor:
          ConstructorRM.fromJson(json['Constructor'] as Map<String, dynamic>),
      points: json['points'] as String,
      position: json['position'] as String,
      wins: json['wins'] as String,
    );

Map<String, dynamic> _$ConstructorStandingRMToJson(
        ConstructorStandingRM instance) =>
    <String, dynamic>{
      'Constructor': instance.constructor,
      'points': instance.points,
      'position': instance.position,
      'wins': instance.wins,
    };
