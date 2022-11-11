import '../../entities/entities.dart';
import '../../repository/repository.dart';
import '../use_case.dart';

class GetDriverStandings
    extends UseCase<GetDriverStandingsParams, Standings<DriverStanding>> {
  const GetDriverStandings({
    required this.repository,
  });

  final IStandingsRepository repository;

  @override
  Future<Standings<DriverStanding>> execute(GetDriverStandingsParams params) =>
      repository.getDriverStandings(
        year: params.year ?? DateTime.now().year,
      );
}

class GetDriverStandingsParams {
  GetDriverStandingsParams({this.year});

  final Year? year;
}
