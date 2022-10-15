import 'package:json_annotation/json_annotation.dart';

import 'driver_standing_rm.dart';
import 'ergast_api_rm.dart';

part 'driver_standings_rm.g.dart';

@JsonSerializable()
class DriverStandingsDataRM extends ErgastApiRM {
  const DriverStandingsDataRM({
    required super.limit,
    required super.offset,
    required super.total,
    required this.driverStandingsRM,
  });

  @JsonKey(name: 'StandingsLists', readValue: readValue)
  final List<DriverStandingsRM> driverStandingsRM;

  static Object? readValue(Map json, String standingsList) {
    final standingsTable = ErgastApiRM.getData(json)['StandingsTable'];
    return standingsTable[standingsList];
  }

  factory DriverStandingsDataRM.fromJson(Map<String, dynamic> json) =>
      _$DriverStandingsDataRMFromJson(json);

  Map<String, dynamic> toJson() => _$DriverStandingsDataRMToJson(this);
}

@JsonSerializable()
class DriverStandingsRM {
  const DriverStandingsRM({
    required this.season,
    required this.round,
    required this.standings,
  });

  @JsonKey(name: 'season')
  final String season;
  @JsonKey(name: 'round')
  final String round;
  @JsonKey(name: 'DriverStandings')
  final List<DriverStandingRM> standings;

  factory DriverStandingsRM.fromJson(Map<String, dynamic> json) =>
      _$DriverStandingsRMFromJson(json);

  Map<String, dynamic> toJson() => _$DriverStandingsRMToJson(this);
}
