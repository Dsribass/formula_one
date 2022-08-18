import 'standings.dart';
import '../type_aliases.dart';

class StandingsList<T extends Standings> {
  const StandingsList({
    required this.year,
    required this.round,
    required this.standings,
  });

  final Year year;
  final int round;
  final List<T> standings;
}
