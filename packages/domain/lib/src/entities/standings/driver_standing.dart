import 'standing.dart';
import '../constructor/constructor.dart';
import '../driver/driver.dart';

class DriverStanding extends Standing {
  const DriverStanding({
    required double points,
    required int position,
    required int wins,
    required this.driver,
    required this.constructors,
  }) : super(
          points: points,
          position: position,
          wins: wins,
        );

  final Driver driver;
  final List<Constructor> constructors;
}
