// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_standing_rm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverStandingRM _$DriverStandingRMFromJson(Map<String, dynamic> json) =>
    DriverStandingRM(
      points: json['points'] as String,
      position: json['position'] as String,
      wins: json['wins'] as String,
      driver: DriverRM.fromJson(json['Driver'] as Map<String, dynamic>),
      constructors: (json['Constructors'] as List<dynamic>)
          .map((e) => ConstructorRM.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DriverStandingRMToJson(DriverStandingRM instance) =>
    <String, dynamic>{
      'Driver': instance.driver,
      'Constructors': instance.constructors,
      'points': instance.points,
      'position': instance.position,
      'wins': instance.wins,
    };
