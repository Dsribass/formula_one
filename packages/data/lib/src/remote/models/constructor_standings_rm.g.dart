// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constructor_standings_rm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConstructorStandingsDataRM _$ConstructorStandingsDataRMFromJson(
        Map<String, dynamic> json) =>
    ConstructorStandingsDataRM(
      limit: ApiDataRM.readLimitValue(json, 'limit') as String,
      offset: ApiDataRM.readOffsetValue(json, 'offset') as String,
      total: ApiDataRM.readTotalValue(json, 'total') as String,
      constructorStandingsRM: (ConstructorStandingsDataRM.readValue(
              json, 'StandingsLists') as List<dynamic>)
          .map(
              (e) => ConstructorStandingsRM.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ConstructorStandingsDataRMToJson(
        ConstructorStandingsDataRM instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
      'total': instance.total,
      'StandingsLists': instance.constructorStandingsRM,
    };

ConstructorStandingsRM _$ConstructorStandingsRMFromJson(
        Map<String, dynamic> json) =>
    ConstructorStandingsRM(
      season: json['season'] as String,
      round: json['round'] as String,
      standings: (json['ConstructorStandings'] as List<dynamic>)
          .map((e) => ConstructorStandingRM.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ConstructorStandingsRMToJson(
        ConstructorStandingsRM instance) =>
    <String, dynamic>{
      'season': instance.season,
      'round': instance.round,
      'ConstructorStandings': instance.standings,
    };
