//class that generate routs
import 'package:aloosra_clinic/core/di/dependency_injection.dart';
import 'package:aloosra_clinic/features/login/data/logic/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:aloosra_clinic/core/routing/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/home/ui/home_screen.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/on_boarding/on_boarding_screen.dart';

class AppRoute {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        {
          return _route(const OnBoardingScreen());
        }
      case Routes.loginScreen:
        {
          //apply the bloc
          return _route(BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: const LoginScreen()));
        }
      case Routes.homeScreen:
        {
          return _route(const HomeScreen());
        }
      default:
        {
          return _route(const Scaffold(
            body: Center(
              child: Text("NO PAGE FOUND"),
            ),
          ));
        }
    }
  }

  MaterialPageRoute _route(Widget screen) {
    return MaterialPageRoute(builder: (_) => screen);
  }
}
