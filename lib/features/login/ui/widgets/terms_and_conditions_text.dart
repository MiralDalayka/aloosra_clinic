import 'package:flutter/material.dart';

import '../../../../core/theming/style.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return    RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: "By logging, you agree to our ",
          style: TextStyles.font14GreyRegular,
          children: <TextSpan>[
            TextSpan(
              text: "Terms & Conditions ",
              style: TextStyles.font14DarkBlueMedium,
            ),
             TextSpan(text: "and ", style: TextStyles.font14GreyRegular.copyWith(height: 1.5),),
            TextSpan(
              text: "PrivacyPolicy.",
              style: TextStyles.font14DarkBlueMedium,
            ),
          ]),
    );
  }
}
