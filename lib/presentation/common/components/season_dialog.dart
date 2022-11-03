import 'package:flutter/material.dart';
import 'package:formula_one/generated/l10n.dart';
import 'package:formula_one/presentation/common/theme/formula_one_colors.dart';
import 'package:formula_one/presentation/common/theme/formula_one_text_styles.dart';

class SeasonDialog {
  static Iterable<int> get formulaOneYears sync* {
    int startYear = DateTime.now().year;
    while (startYear >= 1950) {
      yield startYear--;
    }
  }

  static Dialog create(BuildContext context) {
    final colors = FormulaOneColors.of(context);
    final styles = FormulaOneTextStyles.of(context);

    return Dialog(
      backgroundColor: colors.gray600,
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
                style: styles.dialogTitle,
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
                            style: styles.dialogYear,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
