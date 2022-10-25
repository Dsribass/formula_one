import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:formula_one/utils/path_builder.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DataModule {
  @singleton
  PathBuilder get pathBuilder => PathBuilder();

  @singleton
  FormulaOneHttpClientDio formulaOneHttpClientDio(PathBuilder pathBuilder) =>
      FormulaOneHttpClientDio(pathBuilder.baseUrl);

  @Injectable(as: IStandingsRDS)
  ApiStandingsRDS standingsRDS(
    FormulaOneHttpClientDio dio,
    PathBuilder pathBuilder,
  ) =>
      ApiStandingsRDS(dio: dio, pathBuilder: pathBuilder);

  @Injectable(as: IStandingsRepository)
  StandingsRepository standingsRepository(IStandingsRDS standingsRDS) =>
      StandingsRepository(
        standingsRDS: standingsRDS,
      );
}
