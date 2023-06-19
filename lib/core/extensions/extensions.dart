import 'dart:developer' as dev;

import 'package:flutter/material.dart';

extension SizedBoxXY on double {
  SizedBox get xSizedBox => SizedBox(width: this);
  SizedBox get ySizedBox => SizedBox(height: this);
}

extension Log on Object? {
  void debugLog() => dev.log(toString());
}

extension ScreenSize on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}

extension CustomNavigator on BuildContext {
  void push({
    required String routeName,
    Object? arguments,
  }) =>
      Navigator.pushNamed(
        this,
        routeName,
        arguments: arguments,
      );

  void pushReplacement({
    required String routeName,
    Object? arguments,
  }) =>
      Navigator.pushReplacementNamed(
        this,
        routeName,
        arguments: arguments,
      );

  void pop() => Navigator.pop(
        this,
      );

  void popUntilFirst() => Navigator.popUntil(
        this,
        (route) => route.isFirst,
      );
}
