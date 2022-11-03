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
        color: colors.gray100,
      );

  @override
  TextStyle get standingsYear => GoogleFonts.spaceGrotesk(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: colors.gray100,
      );

  @override
  TextStyle get driverCardFirstName => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: colors.gray600,
      );

  @override
  TextStyle get driverCardLastName => GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: colors.black,
      );

  @override
  TextStyle get driverCardNumber => GoogleFonts.spaceGrotesk(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: colors.white,
      );

  @override
  TextStyle get driverCardPoints => GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: colors.white,
      );

  @override
  TextStyle get driverCardPosition => GoogleFonts.spaceGrotesk(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: colors.black,
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
}
