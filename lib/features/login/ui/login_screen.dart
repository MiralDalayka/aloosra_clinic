import 'package:aloosra_clinic/core/helpers/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theming/style.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../../core/widgets/app_text_from_field.dart';
import 'widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText =
      true; //should be true as default so the icon get build on the text from widget at the first place

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14GreyRegular,
                ),
                verticalSpace(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFromField(
                        hintText: "Email",
                      ),
                      verticalSpace(18),
                      AppTextFromField(
                          hintText: "Password",
                          obscureText: isObscureText,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isObscureText = !isObscureText;
                              });
                            },
                            child: isObscureText
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                          ))
                    ],
                  ),
                ),
                verticalSpace(24),
                Align(
                    // alignment: Alignment.center, //will not work
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      "Forget Password",
                      style: TextStyles.font13BlueRegular,
                    )),
                verticalSpace(40),
                AppTextButton(
                  buttonText: "Login",
                  horizontalPadding: 12,
                  verticalPadding: 14,
                  textStyle: TextStyles.font16WhiteSemiBold,
                  onPressed: () {

                    context.pushReplacementNamed(
                        routeName: ''); //todo change the router name
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
