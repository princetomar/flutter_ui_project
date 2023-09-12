import 'package:flutter/cupertino.dart';

class NavigationMethods {
  static nextScreen(
      BuildContext context, String nextScreenName, List<String>? arguments) {
    Navigator.pushNamed(context, nextScreenName, arguments: arguments!);
  }

  static nextScreenReplaceMent(
      BuildContext context, String nextScreenName, List<String>? arguments) {
    Navigator.pushReplacementNamed(context, nextScreenName,
        arguments: arguments!);
  }
}
