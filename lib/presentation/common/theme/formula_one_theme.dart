import 'package:flutter/material.dart';
import 'package:formula_one/presentation/common/theme/formula_one_assets.dart';
import 'package:formula_one/presentation/common/theme/formula_one_colors.dart';
import 'package:formula_one/presentation/common/theme/formula_one_text_styles.dart';
import 'package:formula_one/presentation/common/theme/light/light_assets.dart';
import 'package:formula_one/presentation/common/theme/light/light_colors.dart';
import 'package:formula_one/presentation/common/theme/light/light_text_styles.dart';

const _lightColors = LightColors();
const _lightTextStyles = LightTextStyles(_lightColors);
const _lightAssets = LightAssets();

const _darkColors = _lightColors;
const _darkTextStyles = _lightTextStyles;
const _darkAssets = _lightAssets;

class FormulaOneTheme extends InheritedWidget {
  const FormulaOneTheme._({
    required this.colors,
    required this.assets,
    required this.textStyles,
    required super.child,
  });

  const FormulaOneTheme.light({required Widget child})
      : this._(
          colors: _lightColors,
          textStyles: _lightTextStyles,
          assets: _lightAssets,
          child: child,
        );

  const FormulaOneTheme.dark({required Widget child})
      : this._(
          colors: _darkColors,
          textStyles: _darkTextStyles,
          assets: _darkAssets,
          child: child,
        );

  final FormulaOneColors colors;
  final FormulaOneTextStyles textStyles;
  final FormulaOneAssets assets;

  static FormulaOneTheme of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FormulaOneTheme>()!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return this != oldWidget;
  }
}

extension FormulaOneThemeData on FormulaOneTheme {
  static ThemeData getFormulaOneThemeData(
    BuildContext context,
    Brightness brightness,
  ) {
    final colors = FormulaOneColors.of(context);

    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        brightness: brightness,
        seedColor: colors.primary,
        background: colors.gray900,
        surface: colors.gray600,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colors.gray600,
        elevation: 4,
      ),
      scaffoldBackgroundColor: colors.gray900,
      cardTheme: CardTheme(
        elevation: 2,
        color: colors.gray600,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
