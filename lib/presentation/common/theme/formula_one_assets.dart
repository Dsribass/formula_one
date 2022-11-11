import 'package:flutter/material.dart';
import 'package:formula_one/presentation/common/theme/formula_one_theme.dart';

abstract class FormulaOneAssets {
  FormulaOneAssets._();

  static FormulaOneAssets of(BuildContext context) {
    return FormulaOneTheme.of(context).assets;
  }

  AssetImage get logo;
}