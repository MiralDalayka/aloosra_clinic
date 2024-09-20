import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theming/style.dart';


class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //using the vector lib
       SvgPicture.asset('asset/svgs/logo.svg'),
        SizedBox(width: 10.w,),
        Text("Docdoc",
        style: TextStyles.font24Black700Weight ,
        ),
      ],
    );
  }
}
