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
import 'package:formula_one/presentation/common/theme/formula_one_assets.dart';
import 'package:formula_one/presentation/common/theme/formula_one_colors.dart';
import 'package:formula_one/presentation/standings/constructor/constructor_standings_bloc.dart';
import 'package:formula_one/presentation/standings/constructor/constructor_standings_models.dart';

class ConstructorStandingsPage extends StatelessWidget {
  const ConstructorStandingsPage({required this.bloc, Key? key})
      : super(key: key);

  final ConstructorStandingsBloc bloc;

  static Widget create() => ConstructorStandingsPage(
        bloc: getIt<ConstructorStandingsBloc>(),
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
              final constructorStanding = success.constructorStanding;
              return Standings(
                title: S.of(context).standingsConstructorTitle,
                year: constructorStanding.year.toString(),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(height: 8),
                  itemCount: constructorStanding.standings.length,
                  itemBuilder: (context, index) {
                    var standings = constructorStanding.standings;
                    return StandingCard(
                      position: '${index + 1}',
                      points: standings[index].points,
                      title: standings[index].constructor.name,
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
