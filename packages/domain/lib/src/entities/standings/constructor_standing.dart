import 'standing.dart';
import '../constructor/constructor.dart';

class ConstructorStanding extends Standing {
  const ConstructorStanding({
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
