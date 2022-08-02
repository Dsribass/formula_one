import 'package:domain/src/repositories/i_driver_repository.dart';
import 'package:domain/src/use_cases/use_case.dart';

class GetCurrentDriverStandings extends UseCase<NoParams, void> {
  const GetCurrentDriverStandings({
    required this.repository,
  });

  final IDriverRepository repository;

  @override
  Future<void> execute(NoParams param) => repository.getDriverStandings(
        year: DateTime.now().year,
      );
}
