//class that generate routs
import 'package:flutter/material.dart';
import 'package:aloosra_clinic/core/routing/routes.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/on_boarding/on_boarding_screen.dart';

class AppRoute {
  Route generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case Routes.onBoardingScreen:
        {
          return _route(const OnBoardingScreen());
        }
      case  Routes.loginScreen:{
        return _route(const LoginScreen());
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
