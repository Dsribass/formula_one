import 'package:flutter/material.dart';
import 'package:formula_one/presentation/common/theme/formula_one_theme.dart';

abstract class FormulaOneColors {
  FormulaOneColors._();

  static FormulaOneColors of(BuildContext context) {
    return FormulaOneTheme.of(context).colors;
  }

  Color get black;

  Color get white;

  Color get primary;

  Color get secondary;

  Color get gray900;

  Color get gray600;

  Color get gray300;

  Color get gray100;
}
