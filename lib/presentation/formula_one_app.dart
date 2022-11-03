import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:formula_one/generated/l10n.dart';
import 'package:formula_one/presentation/common/routing.dart';
import 'package:formula_one/presentation/common/theme/formula_one_theme.dart';
import 'package:routemaster/routemaster.dart';

class FormulaOneApp extends StatefulWidget {
  const FormulaOneApp({Key? key}) : super(key: key);

  @override
  State<FormulaOneApp> createState() => _FormulaOneAppState();
}

class _FormulaOneAppState extends State<FormulaOneApp>
    with WidgetsBindingObserver {
  late Brightness _platformBrightness;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _platformBrightness = WidgetsBinding.instance.window.platformBrightness;
  }

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    setState(() {
      _platformBrightness = WidgetsBinding.instance.window.platformBrightness;
    });
  }

  @override
  Widget build(BuildContext context) {
    final useDarkTheme = _platformBrightness == ui.Brightness.dark;

    return useDarkTheme
        ? const FormulaOneTheme.dark(
            child: _MaterialApp(
              brightness: Brightness.dark,
            ),
          )
        : const FormulaOneTheme.light(
            child: _MaterialApp(
              brightness: Brightness.dark,
            ),
          );
  }
}

class _MaterialApp extends StatelessWidget {
  const _MaterialApp({
    required this.brightness,
    Key? key,
  }) : super(key: key);

  final Brightness brightness;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Formula One',
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: FormulaOneThemeData.getFormulaOneThemeData(
        context,
        brightness,
      ),
      supportedLocales: S.delegate.supportedLocales,
      routerDelegate: RoutemasterDelegate(
        routesBuilder: (_) => AppRouteMap(),
      ),
      routeInformationParser: const RoutemasterParser(),
    );
  }
}
