import 'package:flutter/material.dart';
import 'package:formula_one/generated/l10n.dart';
import 'package:formula_one/presentation/common/components/driver_card.dart';
import 'package:formula_one/presentation/common/components/standings_scaffold.dart';

class DriverStandingsPage extends StatelessWidget {
  const DriverStandingsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandingsScaffold(
      title: S.of(context).standingsDriverTitle,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (_, __) => const SizedBox(height: 8),
        itemCount: 10,
        itemBuilder: (context, index) => const DriverCard(
          number: '00',
          firstName: 'Nome',
          lastName: 'Sobrenome',
        ),
      ),
    );
  }
}
