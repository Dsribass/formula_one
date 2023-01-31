import 'package:flutter/material.dart';
import 'package:formula_one/presentation/common/theme/formula_one_colors.dart';
import 'package:formula_one/presentation/common/theme/formula_one_text_styles.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTextStyles extends FormulaOneTextStyles {
  const LightTextStyles(FormulaOneColors colors) : super(colors);

  @override
  TextStyle get standingsTitle => GoogleFonts.spaceGrotesk(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: colors.white,
      );

  @override
  TextStyle get standingsSubtitle => GoogleFonts.spaceGrotesk(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: colors.darkWhite,
      );

  @override
  TextStyle get standingsYear => GoogleFonts.spaceGrotesk(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: colors.darkWhite,
      );

  @override
  TextStyle get standingCardTitle => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: colors.darkWhite,
      );

  @override
  TextStyle get standingCardSubtitle => GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: colors.white,
      );

  @override
  TextStyle get driverCardNumber => GoogleFonts.spaceGrotesk(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: colors.white,
      );

  @override
  TextStyle get standingCardPoints => GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: colors.white,
      );

  @override
  TextStyle get standingCardPosition => GoogleFonts.spaceGrotesk(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: colors.white,
      );

  @override
  TextStyle get dialogTitle => GoogleFonts.inter(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: colors.white,
      );

  @override
  TextStyle get dialogYear => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: colors.white,
      );

  @override
  TextStyle get button => GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: colors.white,
    height: 19.36 / 20
  );

  @override
  TextStyle get errorTitle => GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: colors.white,
  );
}
