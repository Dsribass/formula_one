import 'standings.dart';
import '../constructor/constructor.dart';

class ConstructorStandings extends Standings {
  const ConstructorStandings({
    required double points,
    required int position,
    required int wins,
    required this.constructor,
  }) : super(
    points: points,
    position: position,
    wins: wins,
  );

  final Constructor constructor;
}
