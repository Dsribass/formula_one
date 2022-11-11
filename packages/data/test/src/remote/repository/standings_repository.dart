import 'package:data/src/remote/data_source/standings_rds.dart';
import 'package:data/src/remote/models/constructor_rm.dart';
import 'package:data/src/remote/models/driver_rm.dart';
import 'package:data/src/remote/models/driver_standing_rm.dart';
import 'package:data/src/remote/models/driver_standings_rm.dart';
import 'package:data/src/repository/standings_repository.dart';
import 'package:domain/domain.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

class MockStandingsRDS extends Mock implements IStandingsRDS {}

void main() {
  late final MockStandingsRDS standingsRDS;
  late final StandingsRepository repository;

  setUp(() {
    standingsRDS = MockStandingsRDS();
    repository = StandingsRepository(standingsRDS: standingsRDS);
  });

  group('getDriverStandings', () {
    test('should get driver standings', () async {
      when(() => standingsRDS.getDriverStandings(any())).thenAnswer(
        (_) async => _mockDriverStandingsRM,
      );

      final sut = await repository.getDriverStandings(
        year: DateTime.now().year,
      );

      expect(sut, isA<Standings<DriverStanding>>());
    });
  });
}

final _mockDriverStandingsRM = DriverStandingsRM(
  season: '2022',
  round: '0',
  standings: [
    DriverStandingRM(
      points: '0',
      position: '1',
      wins: '0',
      driver: DriverRM(
        id: 'pilot_id',
        nationality: 'nationality',
        firstName: 'FirstName',
        lastName: 'LastName',
        birthDate: DateTime.now(),
        code: '0',
        permanentNumber: '0',
        url: '',
      ),
      constructors: [
        ConstructorRM(
          id: 'constructor_id',
          nationality: 'nationality',
          name: 'constructorName',
          url: '',
        ),
      ],
    ),
  ],
);
