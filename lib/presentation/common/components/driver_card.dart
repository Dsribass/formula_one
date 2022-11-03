import 'package:flutter/material.dart';
import 'package:formula_one/presentation/common/theme/formula_one_colors.dart';
import 'package:formula_one/presentation/common/theme/formula_one_text_styles.dart';

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
              if (number != null)
                Container(
                  width: 65,
                  height: 60,
                  decoration: BoxDecoration(
                    color: colors.primary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(number!, style: styles.driverCardPosition),
                  ),
                ),
              const SizedBox(width: 24),
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
      ),
    );
  }
}
