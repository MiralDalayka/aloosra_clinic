import 'package:aloosra_clinic/core/helpers/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/routing/routes.dart';
import '../../../core/theming/theming.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            //remove all default spaces because we added sized box
            backgroundColor: const WidgetStatePropertyAll(ColorManager.primary),
            //get the max width of it's parent and 50 height
            minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50.h)),
        //make rounded shape
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            )
          )
        ),
        onPressed: () {
          //navigate to second page
        context.pushNamed(routeName: Routes.loginScreen);
        },
        child: Text(
          "Get Started",
          style: TextStyles.font16WhiteSimiBold,
        ));
  }
}
