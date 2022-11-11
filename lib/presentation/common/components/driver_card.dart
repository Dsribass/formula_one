import 'package:flutter/material.dart';
import 'package:formula_one/generated/l10n.dart';
import 'package:formula_one/presentation/common/theme/formula_one_colors.dart';
import 'package:formula_one/presentation/common/theme/formula_one_text_styles.dart';

class DriverCard extends StatelessWidget {
  const DriverCard({
    required this.firstName,
    required this.lastName,
    required this.points,
    required this.position,
    Key? key,
  }) : super(key: key);

  final String position;
  final double points;
  final String firstName;
  final String lastName;

  @override
  Widget build(BuildContext context) {
    final colors = FormulaOneColors.of(context);
    final styles = FormulaOneTextStyles.of(context);

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
              Expanded(
                child: Row(
                  children: [
                    Text(
                      position,
                      style: styles.driverCardPosition,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 21,
                      width: 1,
                      color: colors.white,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(firstName, style: styles.driverCardFirstName),
                        Text(lastName, style: styles.driverCardLastName),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 32,
                ),
                decoration: BoxDecoration(
                  color: colors.primary,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  S.of(context).driverCardPoints(points.round()),
                  style: styles.driverCardPoints,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
