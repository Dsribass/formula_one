abstract class PathBuilder {
  StandingsPath get standingsPath;
}

abstract class StandingsPath {
  String driverStandingsPath(int year);

  String constructorStandingsPath(int year);
}
