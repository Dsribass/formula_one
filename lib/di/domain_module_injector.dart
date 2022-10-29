import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DomainModule {
  @injectable
  GetDriverStandings getCurrentDriverStandings(
    IStandingsRepository repository,
  ) =>
      GetDriverStandings(repository: repository);
}
