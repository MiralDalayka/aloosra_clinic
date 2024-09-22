import 'package:flutter/material.dart';

import '../../../../core/theming/style.dart';

class AlreadyHaveAnAccountText extends StatelessWidget {
  const AlreadyHaveAnAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return                 Align(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: "Already have an account yet? ",
            style: TextStyles.font14GreyRegular,
            children: <TextSpan>[
              TextSpan(
                text: "Sign Up",
                style: TextStyles.font13BlueSemiBold,
              ),

            ]),
      ),
    );
  }
}
