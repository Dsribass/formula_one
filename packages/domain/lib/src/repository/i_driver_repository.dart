import '../entities/entities.dart';

abstract class IDriverRepository {
  Future<Standings<DriverStanding>> getDriverStandings({required Year year});
}