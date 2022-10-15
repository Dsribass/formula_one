// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_standings_rm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverStandingsDataRM _$DriverStandingsDataRMFromJson(
        Map<String, dynamic> json) =>
    DriverStandingsDataRM(
      limit: json['limit'] as String,
      offset: json['offset'] as String,
      total: json['total'] as String,
      driverStandingsRM: DriverStandingsRM.fromJson(
          DriverStandingsDataRM.readValue(json, 'StandingsList')
              as Map<String, dynamic>),
    );

Map<String, dynamic> _$DriverStandingsDataRMToJson(
        DriverStandingsDataRM instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
      'total': instance.total,
      'StandingsList': instance.driverStandingsRM,
    };

DriverStandingsRM _$DriverStandingsRMFromJson(Map<String, dynamic> json) =>
    DriverStandingsRM(
      season: json['season'] as String,
      round: json['round'] as String,
      standings: (json['DriverStandings'] as List<dynamic>)
          .map((e) => DriverStandingRM.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DriverStandingsRMToJson(DriverStandingsRM instance) =>
    <String, dynamic>{
      'season': instance.season,
      'round': instance.round,
      'DriverStandings': instance.standings,
    };
