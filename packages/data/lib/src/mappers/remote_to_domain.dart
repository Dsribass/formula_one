import 'package:domain/domain.dart';

import '../remote/models/models.dart';

extension DriverStandingsRMtoDM on DriverStandingsRM {
  Standings<DriverStanding> toDM() {
    return Standings(
      year: int.parse(season),
      round: int.parse(round),
      standings: standings.toDM(),
    );
  }
}

extension on List<DriverStandingRM> {
  List<DriverStanding> toDM() => map(
        (driverStandingRM) => driverStandingRM.toDM(),
      ).toList();
}

extension on DriverStandingRM {
  DriverStanding toDM() {
    return DriverStanding(
      points: double.parse(points),
      position: int.parse(position),
      wins: int.parse(wins),
      driver: driver.toDM(),
      constructor: constructors.first.toDM(),
    );
  }
}

extension on DriverRM {
  Driver toDM() {
    return Driver(
      birthDate: birthDate,
      firstName: firstName,
      lastName: lastName,
      nationality: nationality,
      code: code,
      id: id,
      url: url,
      permanentNumber: permanentNumber,
    );
  }
}

extension on ConstructorRM {
  Constructor toDM() {
    return Constructor(
      id: id,
      url: url,
      nationality: nationality,
      name: name,
    );
  }
}
