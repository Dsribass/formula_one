import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formula_one/di/injector.dart';
import 'package:formula_one/generated/l10n.dart';
import 'package:formula_one/presentation/common/components/response_state/response_state_view.dart';
import 'package:formula_one/presentation/common/components/response_state/state.dart';
import 'package:formula_one/presentation/common/components/season_dialog.dart';
import 'package:formula_one/presentation/common/components/standing_card.dart';
import 'package:formula_one/presentation/common/components/standings.dart';
import 'package:formula_one/presentation/common/routing.dart';
import 'package:formula_one/presentation/common/theme/formula_one_assets.dart';
import 'package:formula_one/presentation/common/theme/formula_one_colors.dart';
import 'package:formula_one/presentation/standings/driver/driver_standings_bloc.dart';
import 'package:formula_one/presentation/standings/driver/driver_standings_models.dart';
import 'package:routemaster/routemaster.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Image(
          image: FormulaOneAssets.of(context).logo,
          color: FormulaOneColors.of(context).primary,
        ),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (ctx) => SeasonDialog.create(ctx),
              ).then((year) => bloc.onDatePickSink.add(year));
            },
            icon: Icon(
              Platform.isIOS ? CupertinoIcons.calendar : Icons.date_range,
            ),
          )
        ],
      ),
      body: StreamBuilder(
        stream: bloc.onNewStateStream,
        builder: (context, snapshot) {
          return ResponseStateView<Loading, Error, Success>(
            snapshot: snapshot,
            onSuccess: (context, success) {
              final driverStandings = success.driverStandings;
              final standings = driverStandings.standings;

              return Standings(
                title: S.of(context).standingsDriverTitle,
                year: driverStandings.year.toString(),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(height: 8),
                  itemCount: standings.length,
                  itemBuilder: (context, index) => StandingCard(
                    position: '${index + 1}',
                    points: standings[index].points,
                    title: standings[index].driver.firstName,
                    subtitle: standings[index].driver.lastName,
                    onPressed: () => Routemaster.of(context).pushDriverPage(
                      standings[index].driver.id,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
