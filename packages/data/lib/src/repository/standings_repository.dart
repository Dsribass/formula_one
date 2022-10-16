import 'package:domain/domain.dart';

import '../remote/remote.dart';
import '../mappers/remote_to_domain.dart';

class StandingsRepository implements IStandingsRepository {
  const StandingsRepository({
    required this.standingsRDS,
  });

  final IStandingsRDS standingsRDS;

  @override
  Future<Standings<ConstructorStanding>> getConstructorStandings({
    required Year year,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Standings<DriverStanding>> getDriverStandings({
    required Year year,
  }) async {
    final driverStandingsRM = await standingsRDS.getDriverStandings(year);
    return driverStandingsRM.toDM();
  }
}
