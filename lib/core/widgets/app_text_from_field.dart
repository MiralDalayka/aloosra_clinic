import 'package:aloosra_clinic/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/style.dart';

class AppTextFromField extends StatelessWidget {
  final String hintText; //only required
  final Widget? suffixIcon;
  final bool? obscureText;
  final EdgeInsets? contentPadding;
  final OutlineInputBorder? focusedBorder, enabledBorder;
  final TextStyle? hintStyle;
  final Color? textFieldBackgroundColor;
  final TextEditingController? controller;

  //validation function
  final Function(String?) validator;

  const AppTextFromField(
      {super.key,
      required this.hintText,
      this.suffixIcon,
      this.obscureText,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.hintStyle,
      this.textFieldBackgroundColor,
       this.controller,
        required  this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      //from the design
      decoration: InputDecoration(
          isDense: true,
          //default padding
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),

          focusedBorder: focusedBorder ??
              const OutlineInputBorder(
                  borderSide:
                      BorderSide(color: ColorManager.primaryBlue, width: 1.3),
                  borderRadius: BorderRadius.all(Radius.circular(16))),
          enabledBorder: enabledBorder ??
              const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  borderSide:
                      BorderSide(color: ColorManager.lighterGrey, width: 1.3)),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.red,
          width: 1.3
        ),
        borderRadius: BorderRadius.circular(16)
      ),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Colors.red,
                  width: 1.3
              ),
              borderRadius: BorderRadius.circular(16)
          ),
          hintStyle: hintStyle ?? TextStyles.font14LightGreyRegular,
          hintText: hintText,
          suffixIcon: suffixIcon,
          filled: true,
          //to enable the fillColor
          fillColor: textFieldBackgroundColor ?? ColorManager.moreLightGrey),
      obscureText: obscureText ?? false,
      style: TextStyles.font14DarkBlueMedium,
      validator: (value){
        return validator(value);
      },

    );
  }
}
