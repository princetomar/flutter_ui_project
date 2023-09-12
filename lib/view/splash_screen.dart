import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scpenpro/appColors.dart';
import 'package:scpenpro/navigation/navigationMethods.dart';
import 'package:scpenpro/navigation/routeName.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.5),
        child: Image.asset(
          "assets/LoginBG.png",
          fit: BoxFit.cover,
          width: size.width,
          height: size.height * 0.55,
        ),
      ),
      // appBar: AppBar(
      //   flexibleSpace: Image.asset(
      //     "assets/LoginBG.png",
      //     fit: BoxFit.cover,
      //     width: size.width,
      //     height: size.height * 0.55,
      //   ),
      //   toolbarHeight: size.height * 0.5,
      // ),
      body: Container(
        margin:
            EdgeInsets.symmetric(horizontal: size.width * 0.05, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/applogo.png",
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Learn everything with AI",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: AppColors.titleTextColor,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "learn and grow with ai to stay up to date, with every evolving demand of ai in the future",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.lightTextColor,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Center(
              child: Container(
                width: 319,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.purleButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  onPressed: () {
                    NavigationMethods.nextScreenReplaceMent(
                        context, RouteName.faceIDRecognitionScreen, []);
                  },
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.buttonTextColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Center(
              child: Container(
                width: 319,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.purleButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Join as admin",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.buttonTextColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
