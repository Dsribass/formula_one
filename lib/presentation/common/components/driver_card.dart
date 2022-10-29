import 'package:flutter/material.dart';
import 'package:formula_one/presentation/common/theme/app_themes.dart';

class DriverCard extends StatelessWidget {
  const DriverCard({
    required this.firstName,
    required this.lastName,
    this.number,
    Key? key,
  }) : super(key: key);

  final String? number;
  final String firstName;
  final String lastName;

  @override
  Widget build(BuildContext context) {
    final theme = AppThemes.of(context);

    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: MaterialButton(
          onPressed: () {},
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 12,
          ),
          child: Row(
            children: [
              if (number != null)
                Container(
                  width: 65,
                  height: 60,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      number!,
                      style: theme.textTheme.headline5?.copyWith(
                        color: theme.colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ),
              const SizedBox(width: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    firstName,
                    style: theme.textTheme.subtitle2?.copyWith(
                      color: theme.colorScheme.onBackground,
                    ),
                  ),
                  Text(
                    lastName,
                    style: theme.textTheme.subtitle1?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
