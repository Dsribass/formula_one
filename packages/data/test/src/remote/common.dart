import 'package:data/data.dart';
import 'package:mocktail/mocktail.dart';

class MockPathBuilder extends Mock implements IPathBuilder {
  @override
  IStandingsPath get standingsPath => MockStandingsPath();
}

class MockStandingsPath extends Mock implements IStandingsPath {
  @override
  String driverStandingsPath(int year) => '';
}