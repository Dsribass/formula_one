import '../entities/entities.dart';

abstract class IDriverRepository {
  Future<StandingsList<DriverStandings>> getDriverStandings({required Year year});
}