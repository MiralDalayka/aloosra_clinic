import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theming/style.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('asset/svgs/big_logo.svg'),
        //since the image is decorates from the bottom we will use container to do this
        // decoration (foregroundDecoration)
        Container(
          foregroundDecoration: BoxDecoration(
              //this gives the effect
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  stops: const [
                0.14,
                0.9
              ],
                  // the percent that the gradient will be
                  colors: [
                Colors.white,
                Colors.white.withOpacity(0.0)
                //withOpacity(0.0) = transparent but transparent gives black effect
              ])),
          child: Image.asset("asset/images/on_boarding_doctor_image.png"),
        ),
        Positioned(
            bottom: 15,
            //this to make the border of the text is between the screen edges
            left: 0,
            right: 0,
            child: Text(
              "Best Doctor\nAppointment App",
              style: TextStyles.font32BlueBold.copyWith(
                //to make space between the two lines
                height: 1.4
              ),
              textAlign: TextAlign.center,
            )),
      ],
    );
  }
}
