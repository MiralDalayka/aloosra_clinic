import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'theming.dart';


class TextStyles{
  //font weight way
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black

  );
  //or bold medium way
  static TextStyle font32BlueBold = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w700,
      color: ColorManager.primary

  );
  static TextStyle font13GreyRegular = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.normal,
      color: Colors.grey

  );

  static TextStyle font16WhiteSimiBold = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500, //todo change this
      color: Colors.white

  );
}