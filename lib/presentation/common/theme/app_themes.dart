import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Text Styles
TextStyle _headline1 = GoogleFonts.spaceGrotesk(
  fontSize: 104,
  fontWeight: FontWeight.w300,
  letterSpacing: -1.5,
);
TextStyle _headline2 = GoogleFonts.spaceGrotesk(
  fontSize: 65,
  fontWeight: FontWeight.w300,
  letterSpacing: -0.5,
);
TextStyle _headline3 = GoogleFonts.spaceGrotesk(
  fontSize: 52,
  fontWeight: FontWeight.w400,
);
TextStyle _headline4 = GoogleFonts.spaceGrotesk(
  fontSize: 37,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.25,
);
TextStyle _headline5 = GoogleFonts.spaceGrotesk(
  fontSize: 26,
  fontWeight: FontWeight.w700,
);
TextStyle _headline6 = GoogleFonts.spaceGrotesk(
  fontSize: 22,
  fontWeight: FontWeight.w700,
  letterSpacing: 0.15,
);
TextStyle _subtitle1 = GoogleFonts.spaceGrotesk(
  fontSize: 17,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.15,
);
TextStyle _subtitle2 = GoogleFonts.spaceGrotesk(
  fontSize: 15,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.1,
);
TextStyle _bodyText1 = GoogleFonts.inter(
  fontSize: 15,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.5,
);
TextStyle _bodyText2 = GoogleFonts.inter(
  fontSize: 13,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.25,
);
TextStyle _button = GoogleFonts.inter(
  fontSize: 13,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.25,
);
TextStyle _caption = GoogleFonts.inter(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.4,
);
TextStyle _overline = GoogleFonts.inter(
  fontSize: 10,
  fontWeight: FontWeight.w400,
  letterSpacing: 1.5,
);

/// Colors
Color _primary = const Color(0xFFC8102E);
Color _background = const Color(0xFF0E0E0E);
Color _grey = const Color(0xFF2F2F2F);
Color _whiteDark = const Color(0xFFFFFFFF).withOpacity(0.8);

class AppThemes {
  static ThemeData of(BuildContext context) {
    return Theme.of(context);
  }

  static ThemeData get dark => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: _primary,
          brightness: Brightness.dark,
          surface: _grey,
          background: _background,
          onBackground: _whiteDark,
        ),
        primaryColor: _primary,
        scaffoldBackgroundColor: _background,
        cardTheme: CardTheme(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            )),
        textTheme: TextTheme(
          headline1: _headline1,
          headline2: _headline2,
          headline3: _headline3,
          headline4: _headline4,
          headline5: _headline5,
          headline6: _headline6,
          subtitle1: _subtitle1,
          subtitle2: _subtitle2,
          bodyText1: _bodyText1,
          bodyText2: _bodyText2,
          button: _button,
          caption: _caption,
          overline: _overline,
        ),
      );

  static ThemeData get light => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: _primary,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: _whiteDark,
        cardTheme: CardTheme(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            )),
        textTheme: TextTheme(
          headline1: _headline1,
          headline2: _headline2,
          headline3: _headline3,
          headline4: _headline4,
          headline5: _headline5,
          headline6: _headline6,
          subtitle1: _subtitle1,
          subtitle2: _subtitle2,
          bodyText1: _bodyText1,
          bodyText2: _bodyText2,
          button: _button,
          caption: _caption,
          overline: _overline,
        ),
      );
}

extension AssetThemeData on ThemeData {
  AssetTheme get assets => AssetTheme();
}

class AssetTheme {
  AssetImage get logo => const AssetImage('assets/formula-one-logo.png');
}
