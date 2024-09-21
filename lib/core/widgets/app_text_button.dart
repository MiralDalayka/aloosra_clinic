import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theming/theming.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonHeight;
  final double? buttonWidth;
  final String buttonText;
  final TextStyle? textStyle;
  final VoidCallback onPressed; //or returnDataType Function(param)

  const AppTextButton(
      {super.key,
      this.borderRadius,
      this.backgroundColor,
      this.horizontalPadding,
      this.verticalPadding,
      this.buttonHeight,
      required this.buttonText,
      this.textStyle,
      required this.onPressed,
      this.buttonWidth});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
                horizontal: horizontalPadding?.w ?? 0,
                vertical: verticalPadding?.h ?? 0)),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            //remove all default spaces because we added sized box
            backgroundColor: WidgetStatePropertyAll(
                backgroundColor ?? ColorManager.primaryBlue),
            //get the max width of it's parent and 50 height
            minimumSize: WidgetStatePropertyAll(
                Size(buttonWidth?.w ?? double.infinity, buttonHeight ?? 50.h)),
            //make rounded shape
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 16)))),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: textStyle ?? TextStyles.font16WhiteMedium,
        ));
  }
}
