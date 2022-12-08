import 'package:flutter/material.dart';
import 'package:formula_one/generated/l10n.dart';
import 'package:formula_one/presentation/common/components/standing_card.dart';
import 'package:formula_one/presentation/common/components/standings_scaffold.dart';

class ConstructorStandingsPage extends StatelessWidget {
  const ConstructorStandingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandingsScaffold(
      title: S.of(context).standingsConstructorTitle,
      year: DateTime.now().year.toString(),
      onDatePicked: (_) {},
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (_, __) => const SizedBox(height: 8),
        itemCount: 10,
        itemBuilder: (context, index) => StandingCard(
          position: '${index+1}',
          points: 100,
          title: "Construtor",
        ),
      ),
    );
  }
}
