// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:data/data.dart' as _i4;
import 'package:domain/domain.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../common/path_builder.dart' as _i3;
import '../presentation/standings/constructor/constructor_standings_bloc.dart'
    as _i6;
import '../presentation/standings/driver/driver_standings_bloc.dart' as _i7;
import 'data_module_injector.dart' as _i8;
import 'domain_module_injector.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final dataModule = _$DataModule();
  final domainModule = _$DomainModule();
  gh.singleton<_i3.PathBuilder>(dataModule.pathBuilder);
  gh.singleton<_i4.FormulaOneHttpClientDio>(
      dataModule.formulaOneHttpClientDio(get<_i3.PathBuilder>()));
  gh.factory<_i4.IStandingsRDS>(() => dataModule.standingsRDS(
        get<_i4.FormulaOneHttpClientDio>(),
        get<_i3.PathBuilder>(),
      ));
  gh.factory<_i5.IStandingsRepository>(
      () => dataModule.standingsRepository(get<_i4.IStandingsRDS>()));
  gh.factory<_i5.GetConstructorStandings>(() =>
      domainModule.getConstructorStandings(get<_i5.IStandingsRepository>()));
  gh.factory<_i5.GetDriverStandings>(
      () => domainModule.getDriverStandings(get<_i5.IStandingsRepository>()));
  gh.factory<_i6.ConstructorStandingsBloc>(() => _i6.ConstructorStandingsBloc(
      getConstructorStandings: get<_i5.GetConstructorStandings>()));
  gh.factory<_i7.DriverStandingsBloc>(() => _i7.DriverStandingsBloc(
      getCurrentDriverStandings: get<_i5.GetDriverStandings>()));
  return get;
}

class _$DataModule extends _i8.DataModule {}

class _$DomainModule extends _i9.DomainModule {}
