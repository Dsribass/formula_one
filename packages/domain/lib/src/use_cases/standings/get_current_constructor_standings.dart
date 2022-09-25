import '../../entities/entities.dart';
import '../../repository/repository.dart';
import '../use_case.dart';

class GetCurrentConstructorStandings
    extends UseCase<NoParams, Standings<ConstructorStanding>> {
  const GetCurrentConstructorStandings({
    required this.repository,
  });

  final IStandingsRepository repository;

  @override
  Future<Standings<ConstructorStanding>> execute(NoParams params) =>
      repository.getConstructorStandings(
        year: DateTime.now().year,
      );
}
