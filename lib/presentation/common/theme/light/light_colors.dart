import 'package:flutter/material.dart';
import 'package:formula_one/presentation/common/theme/formula_one_colors.dart';

/// - Colors
const _black = Color(0xFF000000);
const _white = Color(0xFFFFFFFF);
const _primary = Color(0xFFC8102E);
final _secondary = const Color(0xFFC8102E).withOpacity(0.9);
const _gray900 = Color(0xFF0E0E0E);
const _gray600 = Color(0xFF2F2F2F);
final _gray300 = _white.withOpacity(0.8);
final _gray100 = _white.withOpacity(0.7);

class LightColors implements FormulaOneColors {
  const LightColors();

  @override
  Color get black => _black;

  @override
  Color get white => _white;

  @override
  Color get primary => _primary;

  @override
  Color get secondary => _secondary;

  @override
  Color get gray900 => _gray900;

  @override
  Color get gray600 => _gray600;

  @override
  Color get gray300 => _gray300;

  @override
  Color get gray100 => _gray100;
}
