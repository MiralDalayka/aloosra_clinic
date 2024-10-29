import 'package:aloosra_clinic/core/helpers/extensions.dart';
import 'package:aloosra_clinic/core/routing/app_route.dart';
import 'package:aloosra_clinic/features/login/data/logic/login_cubit.dart';
import 'package:aloosra_clinic/features/login/data/logic/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/style.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(loading: () {
          showDialog(
              context: context,
              builder: (context) => const Center(
                    child: CircularProgressIndicator(
                      color: ColorManager.primaryBlue,
                    ),
                  ));
        }, success: (loginResponse) {
          context.pop(); //dismiss the loading dialog
          context.pushNamed(routeName: Routes.homeScreen);
        }, error: (error) {
          setUpErrorState(context, error);
        });
      },
      child: const SizedBox.shrink(),
    );
  }

  void setUpErrorState(BuildContext context, String error) {
    context.pop(); //dismiss the loading dialog
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              icon: const Icon(
                Icons.error,
                color: Colors.red,
                size: 32,
              ),
              content: Text(
                error,
                style: TextStyles.font14DarkBlueMedium,
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: Text(
                      'Got it',
                      style: TextStyles.font13BlueSemiBold,
                    ))
              ],
            ));
  }
}
