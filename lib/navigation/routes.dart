import 'package:flutter/material.dart';
import 'package:scpenpro/navigation/navigationMethods.dart';
import 'package:scpenpro/navigation/routeName.dart';
import 'package:scpenpro/view/faceRecognitionScreen.dart';
import 'package:scpenpro/view/fillDetails/chooseProfileScreen.dart';
import 'package:scpenpro/view/fillDetails/customUserRoleScreens/parentRoleScreen.dart';
import 'package:scpenpro/view/fillDetails/customUserRoleScreens/studentRoleScreen.dart';
import 'package:scpenpro/view/fillDetails/customUserRoleScreens/teacherRoleScreen.dart';
import 'package:scpenpro/view/fillDetails/fillRegionScreen.dart';
import 'package:scpenpro/view/fingerPrintScreen.dart';
import 'package:scpenpro/view/loginScreen.dart';
import 'package:scpenpro/view/splash_screen.dart';

import '../view/fillDetails/fillNameScreen.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case RouteName.loginScreen:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case RouteName.faceIDRecognitionScreen:
        return MaterialPageRoute(builder: (context) => FaceRecognitionScreen());
      case RouteName.fingerprintRecognitionScreen:
        return MaterialPageRoute(builder: (context) => FingerPrintScreen());
      case RouteName.fillNameScreen:
        return MaterialPageRoute(builder: (context) => FillNameScreen());
      case RouteName.chooseProfileScreen:
        return MaterialPageRoute(builder: (context) => ChooseProfileScreen());
      case RouteName.teacherRoleScreen:
        return MaterialPageRoute(builder: (context) => TeacherRoleScreen());
      case RouteName.parentRoleScreen:
        return MaterialPageRoute(builder: (context) => ParentRoleScreen());
      case RouteName.studentRoleScreen:
        return MaterialPageRoute(builder: (context) => StudentRoleScreen());

      case RouteName.fillRegionScreen:
        return MaterialPageRoute(
            builder: (context) => FillRegionScreen(
                  details: settings.arguments!,
                ));
      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (context) => Scaffold());
      default:
        return MaterialPageRoute(
          builder: (_) {
            return Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            );
          },
        );
        break;
    }
  }
}
