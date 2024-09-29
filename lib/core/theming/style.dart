import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'font_weight_helper.dart';
import 'theming.dart';


class TextStyles{
  static TextStyle font24BlackBold = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      color: Colors.black

  );
  static TextStyle font32BlueBold = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorManager.primaryBlue

  );
  static TextStyle font24BlueBold = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      color:ColorManager.primaryBlue

  );
  static TextStyle font13GreyRegular = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.regular,
      color: Colors.grey

  );
  static TextStyle font13BlueRegular = TextStyle(
      fontSize: 13.sp,
      fontWeight:  FontWeightHelper.regular,
      color: ColorManager.primaryBlue

  );
  static TextStyle font13BlueSemiBold = TextStyle(
      fontSize: 13.sp,
      fontWeight:  FontWeightHelper.semiBold,
      color: ColorManager.primaryBlue

  );
  static TextStyle font14GreyRegular = TextStyle(
      fontSize: 14.sp,
      fontWeight:  FontWeightHelper.regular,
      color: ColorManager.grey

  );




  static TextStyle font14LightGreyRegular = TextStyle(
      fontSize: 14.sp,
      fontWeight:  FontWeightHelper.regular,
      color: ColorManager.lightGrey);
  static TextStyle font14DarkBlueMedium = TextStyle(
      fontSize: 14.sp,
      fontWeight:  FontWeightHelper.medium,
      color: ColorManager.darkBlue

  );
  static TextStyle font13DarkBlueRegular = TextStyle(
      fontSize: 13.sp,
      fontWeight:  FontWeightHelper.regular,
      color: ColorManager.darkBlue

  );
  static TextStyle font16WhiteMedium = TextStyle(
      fontSize: 16.sp,
      fontWeight:  FontWeightHelper.medium,

      color: Colors.white

  );
  static TextStyle font16WhiteSemiBold = TextStyle(
      fontSize: 16.sp,
      fontWeight:  FontWeightHelper.semiBold,

      color: Colors.white

  );

}