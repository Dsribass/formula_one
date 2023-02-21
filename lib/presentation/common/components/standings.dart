import 'package:flutter/material.dart';
import 'package:formula_one/generated/l10n.dart';
import 'package:formula_one/presentation/common/theme/formula_one_text_styles.dart';

class Standings extends StatelessWidget {
  const Standings({
    Key? key,
    required this.year,
    required this.title,
    required this.child,
  }) : super(key: key);

  final String year;
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    var styles = FormulaOneTextStyles.of(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 28),
            Text(year),
            const SizedBox(height: 10),
            Text(
              S.of(context).standingsScaffoldTitle,
              style: styles.standingsTitle,
            ),
            const SizedBox(height: 8),
            Text(title, style: styles.standingsSubtitle),
            const SizedBox(height: 28),
            child,
            const SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}
