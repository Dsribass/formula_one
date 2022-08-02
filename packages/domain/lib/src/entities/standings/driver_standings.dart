import 'standings.dart';
import '../constructor/constructor.dart';
import '../driver/driver.dart';

class DriverStandings extends Standings {
  const DriverStandings({
    required double points,
    required int position,
    required int wins,
    required this.driver,
    required this.constructor,
  }) : super(
          points: points,
          position: position,
          wins: wins,
        );

  final Driver driver;
  final Constructor constructor;
}
