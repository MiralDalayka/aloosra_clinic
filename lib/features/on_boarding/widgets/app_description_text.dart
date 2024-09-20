import 'package:flutter/material.dart';

import '../../../core/theming/style.dart';

class AppDescriptionText extends StatelessWidget {
  const AppDescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
        textAlign: TextAlign.center,
        style: TextStyles.font13GreyRegular,
        "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.");
  }
}
