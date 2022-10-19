import 'package:data/data.dart';
import 'package:mocktail/mocktail.dart';

class MockPathBuilder extends Mock implements PathBuilder {
  @override
  StandingsPath get standingsPath => MockStandingsPath();
}

class MockStandingsPath extends Mock implements StandingsPath {
  @override
  String driverStandingsPath(int year) => '';
}