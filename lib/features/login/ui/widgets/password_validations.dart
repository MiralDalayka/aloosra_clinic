import 'package:aloosra_clinic/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/style.dart';

class PasswordValidations extends StatelessWidget {
  const PasswordValidations(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecialCharacter,
      required this.hasNumber,
      required this.hasMinLength});

//define bool for each condition
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At Least 1 lowercase letter', hasLowerCase),
        buildValidationRow('At Least 1 uppercase letter', hasUpperCase),
        buildValidationRow('At Least 1 special character', hasSpecialCharacter),
        buildValidationRow('At Least 1 number', hasNumber),
        buildValidationRow('At Least 8 characters length', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 3,
          backgroundColor: ColorManager.grey,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
              decoration: hasValidated
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
              decorationColor: Colors.green,
              decorationThickness: 2,
              color: hasValidated ? ColorManager.grey : ColorManager.darkBlue),
        )
      ],
    );
  }
}
