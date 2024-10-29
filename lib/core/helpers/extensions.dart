//this will help me navigate simpler

import 'package:flutter/material.dart';

/*
instead of using Navigator.of(context).function()
it will be
context.function(); at any where in the project
 */
extension Navigation on BuildContext {
  Future<dynamic> pushNamed({Object? arguments, required String routeName}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(
      {Object? arguments, required String routeName}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(
      {Object? arguments,
        required RoutePredicate predicate,
      required String routeName}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(arguments: arguments, routeName, predicate);
  }

  void pop() => Navigator.of(this).pop();
}
