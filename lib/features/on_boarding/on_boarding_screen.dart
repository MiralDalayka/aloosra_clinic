import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/widgets.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 30.h, //the h is the flutter util
            ),
            child: Column(
              children: [
                const DocLogoAndName(),
                SizedBox(
                  height: 30.h,
                ),
                const DoctorImageAndText(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Column(
                    children: [
                      const AppDescriptionText(),
                      SizedBox(
                        height: 30.h,
                      ),
                      const StartButton()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
