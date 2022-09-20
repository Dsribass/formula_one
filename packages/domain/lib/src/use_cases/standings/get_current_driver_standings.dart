import '../../entities/entities.dart';
import '../../repository/repository.dart';
import '../use_case.dart';

class GetCurrentDriverStandings
    extends UseCase<NoParams, Standings<DriverStanding>> {
  const GetCurrentDriverStandings({
    required this.repository,
  });

  final IStandingsRepository repository;

  @override
  Future<Standings<DriverStanding>> execute(NoParams params) =>
      repository.getDriverStandings(
        year: DateTime.now().year,
      );
}
