import 'package:aloosra_clinic/features/login/data/logic/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theming/style.dart';
import '../../../core/widgets/app_text_button.dart';
import 'widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                      Column(
                        children: [
                          const EmailAndPassword(),
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
                              validateThenLogin(context);
                            },
                          ),
                          verticalSpace(16),
                          const TermsAndConditionsText(),
                          verticalSpace(60),
                          const DoseNotHaveAnAccountText(),
                          const LoginBlocListener(),
                        ],
                      ),
                    ])))));
  }

  void validateThenLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
    // if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    //   context.read<LoginCubit>().emitLoginStates(LoginRequestBody(
    //         email: context.read<LoginCubit>().emailController.text,
    //         password: context.read<LoginCubit>().passwordController.text,
    //       ));
    // }
  }
}
