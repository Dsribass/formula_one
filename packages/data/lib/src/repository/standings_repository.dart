import 'package:domain/domain.dart';

class StandingsRepository implements IStandingsRepository {
  @override
  Future<Standings<ConstructorStanding>> getConstructorStandings({
    required Year year,
  }) {
    // TODO: implement getConstructorStandings
    throw UnimplementedError();
  }

  @override
  Future<Standings<DriverStanding>> getDriverStandings({
    required Year year,
  }) {
    // TODO: implement getDriverStandings
    throw UnimplementedError();
  }
}
