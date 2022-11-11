// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_standings_rm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverStandingsDataRM _$DriverStandingsDataRMFromJson(
        Map<String, dynamic> json) =>
    DriverStandingsDataRM(
      limit: ApiDataRM.readLimitValue(json, 'limit') as String,
      offset: ApiDataRM.readOffsetValue(json, 'offset') as String,
      total: ApiDataRM.readTotalValue(json, 'total') as String,
      driverStandingsRM:
          (DriverStandingsDataRM.readValue(json, 'StandingsLists')
                  as List<dynamic>)
              .map((e) => DriverStandingsRM.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$DriverStandingsDataRMToJson(
        DriverStandingsDataRM instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
      'total': instance.total,
      'StandingsLists': instance.driverStandingsRM,
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
