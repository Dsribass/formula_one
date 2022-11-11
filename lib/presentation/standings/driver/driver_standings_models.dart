import 'package:domain/domain.dart';
import 'package:formula_one/presentation/common/components/response_state/state.dart';

class Success implements ViewState {
  const Success({
    required this.driverStandings,
  });

  final Standings<DriverStanding> driverStandings;
}
