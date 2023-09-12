import 'dart:async';

import 'package:flutter/material.dart';
import 'package:scpenpro/clippers/appBarCustomClipper.dart';

import '../appColors.dart';
import '../navigation/navigationMethods.dart';
import '../navigation/routeName.dart';

class FingerPrintScreen extends StatefulWidget {
  const FingerPrintScreen({super.key});

  @override
  State<FingerPrintScreen> createState() => _FingerPrintScreenState();
}

class _FingerPrintScreenState extends State<FingerPrintScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer.periodic(Duration(seconds: 3), (timer) {
      NavigationMethods.nextScreenReplaceMent(
          context, RouteName.fillNameScreen, []);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: ClipPath(
          clipper: AppBarCustomClipper(),
          child: Image.asset(
            "assets/appBarBack.png",
            fit: BoxFit.cover,
          ),
        ),
        toolbarHeight: size.height * 0.22,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          vertical: size.height * 0.03,
          horizontal: size.width * 0.06,
        ),
        alignment: Alignment.center,
        child: Column(
          children: [
            Image.asset(
              "assets/fingerprint.png",
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "28%",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: AppColors.titleTextColor,
              ),
            ),
            SizedBox(
              height: size.height * 0.035,
            ),
            Text(
              "Touch the sensor",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: AppColors.titleTextColor,
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Put your finger on the sensor and lift after you feel vibration.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.lightTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
