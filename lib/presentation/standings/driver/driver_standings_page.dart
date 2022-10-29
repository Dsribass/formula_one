import 'package:flutter/material.dart';
import 'package:formula_one/di/injector.dart';
import 'package:formula_one/generated/l10n.dart';
import 'package:formula_one/presentation/common/components/driver_card.dart';
import 'package:formula_one/presentation/common/components/response_state/response_state_view.dart';
import 'package:formula_one/presentation/common/components/response_state/state.dart';
import 'package:formula_one/presentation/common/components/standings_scaffold.dart';
import 'package:formula_one/presentation/standings/driver/driver_standings_bloc.dart';
import 'package:formula_one/presentation/standings/driver/driver_standings_models.dart';

class DriverStandingsPage extends StatelessWidget {
  const DriverStandingsPage({
    required this.bloc,
    super.key,
  });

  final DriverStandingsBloc bloc;

  static Widget create() => DriverStandingsPage(
        bloc: getIt<DriverStandingsBloc>(),
      );

  @override
  Widget build(BuildContext context) {
    return StandingsScaffold(
      title: S.of(context).standingsDriverTitle,
      child: StreamBuilder(
        stream: bloc.onNewStateStream,
        builder: (context, snapshot) {
          return ResponseStateView<Loading, Error, Success>(
            snapshot: snapshot,
            onSuccess: (context, success) {
              final driverStandings = success.driverStandings;
              final standings = driverStandings.standings;

              return ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (_, __) => const SizedBox(height: 8),
                itemCount: standings.length,
                itemBuilder: (context, index) => DriverCard(
                  number: '${index+1}',
                  firstName: standings[index].driver.firstName,
                  lastName: standings[index].driver.lastName,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
