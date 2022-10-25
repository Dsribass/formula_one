import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DomainModule {
  @injectable
  GetCurrentDriverStandings getCurrentDriverStandings(
    IStandingsRepository repository,
  ) =>
      GetCurrentDriverStandings(repository: repository);
}
