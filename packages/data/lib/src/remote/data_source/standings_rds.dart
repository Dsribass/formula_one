import '../infra/infra.dart';
import '../models/models.dart';

abstract class IStandingsRDS {
  Future<DriverStandingsRM> getDriverStandings(int year);
}

class ApiStandingsRDS implements IStandingsRDS {
  ApiStandingsRDS({
    required this.dio,
    required this.pathBuilder,
  });

  final StandingsHttpClientDio dio;
  final PathBuilder pathBuilder;

  @override
  Future<DriverStandingsRM> getDriverStandings(int year) async {
    final response = await dio.get(
      pathBuilder.standingsPath.driverStandingsPath(year),
    );

    return DriverStandingsDataRM.fromJson(
      response.data,
    ).driverStandingsRM.first;
  }
}
