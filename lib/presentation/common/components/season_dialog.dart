import 'package:flutter/material.dart';
import 'package:formula_one/generated/l10n.dart';
import 'package:formula_one/presentation/common/theme/app_themes.dart';

class SeasonDialog {
  static Iterable<int> get formulaOneYears sync* {
    int startYear = DateTime.now().year;
    while (startYear >= 1950) {
      yield startYear--;
    }
  }

  static Dialog create(BuildContext context) {
    final theme = AppThemes.of(context);
    return Dialog(
      backgroundColor: theme.colorScheme.surface,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 2,
        child: Column(
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                S.of(context).seasonDialogTitle,
                style: theme.textTheme.headline5,
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Expanded(
              child: ListView(
                children: formulaOneYears
                    .map(
                      (year) => InkWell(
                        onTap: () => Navigator.pop(context, year),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            '$year',
                            style: theme.textTheme.headline6,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            // const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
