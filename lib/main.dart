import 'package:flutter/material.dart';

import 'core/di/dependency_injection.dart';
import 'core/routing/app_route.dart';
import 'doc_app.dart';

void main() {
  setUpGetIt();
  runApp(DocApp(
    appRoute: AppRoute(),
  ));
}
