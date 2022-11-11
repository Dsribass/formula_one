import 'package:flutter/material.dart';
import 'package:formula_one/presentation/common/theme/formula_one_colors.dart';
import 'package:formula_one/presentation/common/theme/formula_one_theme.dart';

abstract class FormulaOneTextStyles {
  const FormulaOneTextStyles(this.colors);

  final FormulaOneColors colors;

  static FormulaOneTextStyles of(BuildContext context) {
    return FormulaOneTheme.of(context).textStyles;
  }

  TextStyle get standingsTitle;

  TextStyle get standingsSubtitle;

  TextStyle get standingsYear;

  TextStyle get driverCardPosition;

  TextStyle get driverCardFirstName;

  TextStyle get driverCardLastName;

  TextStyle get driverCardPoints;

  TextStyle get driverCardNumber;

  TextStyle get dialogTitle;

  TextStyle get dialogYear;

  TextStyle get button;

  TextStyle get errorTitle;
}
