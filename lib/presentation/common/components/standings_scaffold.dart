import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formula_one/generated/l10n.dart';
import 'package:formula_one/presentation/common/components/season_dialog.dart';
import 'package:formula_one/presentation/common/theme/app_themes.dart';

class StandingsScaffold extends StatelessWidget {
  const StandingsScaffold({
    required this.title,
    required this.year,
    required this.onDatePicked,
    required this.child,
    Key? key,
  }) : super(key: key);

  final String title;
  final String year;
  final Widget child;
  final Function(int) onDatePicked;

  @override
  Widget build(BuildContext context) {
    final theme = AppThemes.of(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      image: theme.assets.logo,
                      color: theme.colorScheme.primary,
                    ),
                    IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (ctx) => SeasonDialog.create(ctx),
                        ).then((year) => onDatePicked(year));
                      },
                      icon: Icon(
                        Platform.isIOS
                            ? CupertinoIcons.calendar
                            : Icons.date_range,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 28),
                Text(year),
                const SizedBox(height: 10),
                Text(
                  S.of(context).standingsScaffoldTitle,
                  style: theme.textTheme.headline5,
                ),
                const SizedBox(height: 8),
                Text(
                  title,
                  style: theme.textTheme.headline6?.copyWith(
                    color: theme.colorScheme.onBackground,
                  ),
                ),
                const SizedBox(height: 28),
                child,
                const SizedBox(height: 48),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
