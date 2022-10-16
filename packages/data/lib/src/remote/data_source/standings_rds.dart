import '../infra/path_builder.dart';
import '../models/driver_standings_rm.dart';
import '../remote.dart';

abstract class IStandingsRDS {
  Future<DriverStandingsRM> getDriverStandings(int year);
}

class ApiStandingsRDS implements IStandingsRDS {
  ApiStandingsRDS({
    required this.dio,
  });

  final StandingsHttpClientDio dio;

  @override
  Future<DriverStandingsRM> getDriverStandings(int year) async {
    final response = await dio.get(
      PathBuilder.standingsPath.driverStandingsPath(year),
    );

    return DriverStandingsDataRM.fromJson(
      response.data,
    ).driverStandingsRM.first;
  }
}
