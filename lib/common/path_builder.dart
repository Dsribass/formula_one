import 'package:data/data.dart';

class PathBuilder implements IPathBuilder {
  final baseUrl = 'http://ergast.com/api/f1/';

  @override
  IStandingsPath get standingsPath => StandingsPath();
}

class StandingsPath implements IStandingsPath {
  @override
  String constructorStandingsPath(int year) =>
      '$year/constructorStandings.json';

  @override
  String driverStandingsPath(int year) => '$year/driverStandings.json';
}
