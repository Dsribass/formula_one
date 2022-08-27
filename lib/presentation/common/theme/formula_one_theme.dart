import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormulaOneTheme extends InheritedWidget {
  const FormulaOneTheme({
    required super.child,
    super.key,
  });

  static FormulaOneTheme of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FormulaOneTheme>()!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}

extension FormulaOneThemeMethods on FormulaOneTheme {
  ThemeData get light => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: colors.primary,
          brightness: Brightness.light,
        ),
        textTheme: TextTheme(
          headline1: textStyles.headline1,
          headline2: textStyles.headline2,
          headline3: textStyles.headline3,
          headline4: textStyles.headline4,
          headline5: textStyles.headline5,
          headline6: textStyles.headline6,
          subtitle1: textStyles.subtitle1,
          subtitle2: textStyles.subtitle2,
          bodyText1: textStyles.bodyText1,
          bodyText2: textStyles.bodyText2,
          button: textStyles.button,
          caption: textStyles.caption,
          overline: textStyles.overline,
        ),
      );

  ThemeData get dark => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: colors.primary,
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: colors.background,
        textTheme: TextTheme(
          headline1: textStyles.headline1,
          headline2: textStyles.headline2,
          headline3: textStyles.headline3,
          headline4: textStyles.headline4,
          headline5: textStyles.headline5,
          headline6: textStyles.headline6,
          subtitle1: textStyles.subtitle1,
          subtitle2: textStyles.subtitle2,
          bodyText1: textStyles.bodyText1,
          bodyText2: textStyles.bodyText2,
          button: textStyles.button,
          caption: textStyles.caption,
          overline: textStyles.overline,
        ),
      );

  ThemeColors get colors => ThemeColors();

  ThemeTextStyles get textStyles => ThemeTextStyles();
}

class ThemeTextStyles {
  TextStyle get headline1 => GoogleFonts.spaceGrotesk(
        fontSize: 104,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
      );

  TextStyle get headline2 => GoogleFonts.spaceGrotesk(
        fontSize: 65,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
      );

  TextStyle get headline3 => GoogleFonts.spaceGrotesk(
        fontSize: 52,
        fontWeight: FontWeight.w400,
      );

  TextStyle get headline4 => GoogleFonts.spaceGrotesk(
        fontSize: 37,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      );

  TextStyle get headline5 => GoogleFonts.spaceGrotesk(
        fontSize: 26,
        fontWeight: FontWeight.w400,
      );

  TextStyle get headline6 => GoogleFonts.spaceGrotesk(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      );

  TextStyle get subtitle1 => GoogleFonts.spaceGrotesk(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      );

  TextStyle get subtitle2 => GoogleFonts.spaceGrotesk(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      );

  TextStyle get bodyText1 => GoogleFonts.inter(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      );

  TextStyle get bodyText2 => GoogleFonts.inter(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      );

  TextStyle get button => GoogleFonts.inter(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
      );

  TextStyle get caption => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
      );

  TextStyle get overline => GoogleFonts.inter(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
      );
}

class ThemeColors {
  Color get primary => const Color(0xFFC8102E);

  Color get background => const Color(0xFF0E0E0E);
}
