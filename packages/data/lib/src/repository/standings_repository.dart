import 'package:domain/domain.dart';

import '../mappers/remote_to_domain.dart';
import '../remote/remote.dart';

class StandingsRepository implements IStandingsRepository {
  const StandingsRepository({
    required this.standingsRDS,
  });

  final IStandingsRDS standingsRDS;

  @override
  Future<Standings<ConstructorStanding>> getConstructorStandings({
    required Year year,
  }) =>
      standingsRDS.getConstructorStandings(year).then(
            (e) => e.toDM(),
          );

  @override
  Future<Standings<DriverStanding>> getDriverStandings({
    required Year year,
  }) =>
      standingsRDS.getDriverStandings(year).then(
            (e) => e.toDM(),
          );
}
