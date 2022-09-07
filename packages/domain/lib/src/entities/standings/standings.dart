import '../type_aliases.dart';
import 'standing.dart';

class Standings<T extends Standing> {
  const Standings({
    required this.year,
    required this.round,
    required this.standings,
  });

  final Year year;
  final int round;
  final List<T> standings;
}
