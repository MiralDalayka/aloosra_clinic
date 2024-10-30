import 'package:aloosra_clinic/core/helpers/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/style.dart';

class DoseNotHaveAnAccountText extends StatelessWidget {
  const DoseNotHaveAnAccountText({super.key});

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
                text: "Sign Up",
                style: TextStyles.font13BlueSemiBold,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    context.pushReplacementNamed(routeName: Routes.signupScreen);
                  },
              ),

            ]),
      ),
    );
  }
}
