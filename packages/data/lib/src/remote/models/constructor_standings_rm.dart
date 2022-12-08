import 'package:json_annotation/json_annotation.dart';

import 'api_data_rm.dart';
import 'constructor_standing_rm.dart';

part 'constructor_standings_rm.g.dart';

@JsonSerializable()
class ConstructorStandingsDataRM extends ApiDataRM {
  const ConstructorStandingsDataRM({
    required super.limit,
    required super.offset,
    required super.total,
    required this.constructorStandingsRM,
  });

  @JsonKey(name: 'StandingsLists', readValue: readValue)
  final List<ConstructorStandingsRM> constructorStandingsRM;

  static Object? readValue(Map json, String standingsList) {
    final standingsTable = ApiDataRM.getData(json)['StandingsTable'];
    return standingsTable[standingsList];
  }

  factory ConstructorStandingsDataRM.fromJson(Map<String, dynamic> json) =>
      _$ConstructorStandingsDataRMFromJson(json);

  Map<String, dynamic> toJson() => _$ConstructorStandingsDataRMToJson(this);
}

@JsonSerializable()
class ConstructorStandingsRM {
  const ConstructorStandingsRM({
    required this.season,
    required this.round,
    required this.standings,
  });

  @JsonKey(name: 'season')
  final String season;
  @JsonKey(name: 'round')
  final String round;
  @JsonKey(name: 'ConstructorStandings')
  final List<ConstructorStandingRM> standings;

  factory ConstructorStandingsRM.fromJson(Map<String, dynamic> json) =>
      _$ConstructorStandingsRMFromJson(json);

  Map<String, dynamic> toJson() => _$ConstructorStandingsRMToJson(this);
}
