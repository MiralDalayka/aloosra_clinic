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
            text: "Dose not have an account yet? ",
            style: TextStyles.font14GreyRegular,
            children: <TextSpan>[
              TextSpan(
                text: "Log In",
                style: TextStyles.font13BlueSemiBold,
              ),

            ]),
      ),
    );
  }
}
