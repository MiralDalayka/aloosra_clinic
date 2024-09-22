// clint app file
import 'package:aloosra_clinic/core/routing/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routes.dart';


class DocApp extends StatelessWidget {
  final AppRoute appRoute;
  const DocApp({super.key, required this.appRoute});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

designSize: const Size(375,812), //based on the design
      minTextAdapt: true,
      child: MaterialApp(
theme: ThemeData(
  scaffoldBackgroundColor: Colors.white
),
        debugShowCheckedModeBanner: false,
        title: "Al Osra App",
        onGenerateRoute: appRoute.generateRoute,
initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}
