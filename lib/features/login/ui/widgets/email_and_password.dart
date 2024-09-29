import 'package:aloosra_clinic/features/login/data/logic/login_cubit.dart';
import 'package:aloosra_clinic/features/login/ui/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_text_from_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;
  late TextEditingController passwordController;

//define bool for validation
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacter = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    //get the controller from the cubit and use it here
    passwordController = context
        .read<LoginCubit>()
        .passwordController;
    setUpPasswordControllerListener();
  }

  void setUpPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacter = AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context
          .read<LoginCubit>()
          .formKey,
      child: Column(
        children: [
          AppTextFromField(
            controller: context
                .read<LoginCubit>()
                .emailController,
            validator: (value) {
              if (value == null || value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return "Please Enter Valid Email";
              }
            },
            hintText: "Email",
          ),
          verticalSpace(18),
          AppTextFromField(
              controller: context
                  .read<LoginCubit>()
                  .passwordController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please Enter Valid Password";
                }
              },
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
              )),
          verticalSpace(24),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialCharacter: hasSpecialCharacter,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
