import '../entities/entities.dart';

abstract class IStandingsRepository {
  Future<Standings<DriverStanding>> getDriverStandings({
    required Year year,
  });
}
