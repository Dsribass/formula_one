class PathBuilder {
  StandingsPath get standingsPath => StandingsPath();
}

class StandingsPath {
  String driverStandingsPath(int year) => 'api/f1/$year/driverStandings.json';

  String constructorStandingsPath(int year) =>
      'api/f1/$year/constructorStandings.json';
}
