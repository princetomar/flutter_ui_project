import 'package:flutter/cupertino.dart';

class NavigationMethods {
  static nextScreen(
      BuildContext context, String nextScreenName, Object? arguments) {
    Navigator.pushNamed(context, nextScreenName, arguments: arguments!);
  }

  static nextScreenReplaceMent(
      BuildContext context, String nextScreenName, Object? arguments) {
    Navigator.pushReplacementNamed(context, nextScreenName,
        arguments: arguments!);
  }
}
