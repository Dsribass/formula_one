import 'package:data/src/remote/models/constructor_standings_rm.dart';

import '../infra/infra.dart';
import '../models/models.dart';

abstract class IStandingsRDS {
  Future<DriverStandingsRM> getDriverStandings(int year);

  Future<ConstructorStandingsRM> getConstructorStandings(int year);
}

class ApiStandingsRDS implements IStandingsRDS {
  ApiStandingsRDS({
    required this.dio,
    required this.pathBuilder,
  });

  final FormulaOneHttpClientDio dio;
  final IPathBuilder pathBuilder;

  @override
  Future<DriverStandingsRM> getDriverStandings(int year) async {
    final response = await dio.get(
        pathBuilder.standingsPath.driverStandingsPath(year),
        queryParameters: {
          "limit": 100,
        });

    final driverStandingsRM = DriverStandingsDataRM.fromJson(
      response.data,
    ).driverStandingsRM;

    return driverStandingsRM.isNotEmpty
        ? driverStandingsRM.first
        : DriverStandingsRM(
            season: year.toString(),
            round: '1',
            standings: [],
          );
  }

  @override
  Future<ConstructorStandingsRM> getConstructorStandings(int year) async {
    final response = await dio.get(
        pathBuilder.standingsPath.constructorStandingsPath(year),
        queryParameters: {
          "limit": 100,
        });

    final constructorStandingsRM = ConstructorStandingsDataRM.fromJson(
      response.data,
    ).constructorStandingsRM;

    return constructorStandingsRM.isNotEmpty
        ? constructorStandingsRM.first
        : ConstructorStandingsRM(
            season: year.toString(),
            round: '1',
            standings: [],
          );
  }
}
