// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_standing_rm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverStandingRM _$DriverStandingRMFromJson(Map<String, dynamic> json) =>
    DriverStandingRM(
      points: (json['points'] as num).toDouble(),
      position: json['position'] as int,
      wins: json['wins'] as int,
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
