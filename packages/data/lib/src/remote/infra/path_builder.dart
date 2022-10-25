abstract class IPathBuilder {
  IStandingsPath get standingsPath;
}

abstract class IStandingsPath {
  String driverStandingsPath(int year);

  String constructorStandingsPath(int year);
}
