import '../../entities/entities.dart';
import '../../repository/repository.dart';
import '../use_case.dart';

class GetConstructorStandings extends UseCase<
    GetConstructorParams, Standings<ConstructorStanding>> {
  const GetConstructorStandings({
    required this.repository,
  });

  final IStandingsRepository repository;

  @override
  Future<Standings<ConstructorStanding>> execute(
    GetConstructorParams params,
  ) =>
      repository.getConstructorStandings(
        year: params.year ?? DateTime.now().year,
      );
}

class GetConstructorParams {
  GetConstructorParams({this.year});

  final Year? year;
}
