import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DomainModule {
  @injectable
  GetDriverStandings getDriverStandings(
    IStandingsRepository repository,
  ) =>
      GetDriverStandings(repository: repository);

  @injectable
  GetConstructorStandings getConstructorStandings(
      IStandingsRepository repository,
      ) =>
      GetConstructorStandings(repository: repository);
}
