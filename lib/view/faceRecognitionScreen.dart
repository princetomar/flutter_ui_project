import 'dart:async';

import 'package:flutter/material.dart';
import 'package:scpenpro/appColors.dart';
import 'package:scpenpro/navigation/navigationMethods.dart';
import 'package:scpenpro/navigation/routeName.dart';

class FaceRecognitionScreen extends StatefulWidget {
  const FaceRecognitionScreen({super.key});

  @override
  State<FaceRecognitionScreen> createState() => _FaceRecognitionScreenState();
}

class _FaceRecognitionScreenState extends State<FaceRecognitionScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer.periodic(Duration(seconds: 3), (timer) {
      NavigationMethods.nextScreenReplaceMent(
          context, RouteName.fingerprintRecognitionScreen, []);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.width);
    print(size.height);
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/man.png",
                  fit: BoxFit.cover,
                  height: size.height * 0.7,
                  width: size.height,
                ),
                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(top: size.height * 0.08),
                  child: Image.asset(
                    "assets/scanner.png",
                    height: size.height * 0.4,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: size.height * 0.08,
                  left: size.width / 2,
                  child: Image.asset(
                    "assets/scanDot.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: size.height * 0.42,
                  left: size.width / 2.1,
                  child: Image.asset(
                    "assets/scanDot.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: size.width * 0.24,
                  top: size.height * 0.2,
                  child: Image.asset(
                    "assets/scanDot.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: size.width * 0.24,
                  top: size.height * 0.2,
                  child: Image.asset(
                    "assets/scanDot.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: size.width * 0.33,
                  top: size.height * 0.33,
                  child: Image.asset(
                    "assets/scanDot.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: size.width * 0.33,
                  top: size.height * 0.33,
                  child: Image.asset(
                    "assets/scanDot.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 10,
              child: Container(
                height: size.height * 0.35,
                width: size.width,
                padding: EdgeInsets.symmetric(vertical: 40),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      "Look Left",
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
                      "keep your face in the focus",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.lightTextColor,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.06,
                    ),
                    Text(
                      "30%",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.dartTextColor,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Center(
                      child: Container(
                        height: 16,
                        width: 276,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: AppColors.progressRemainingColor,
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 276 * 0.3,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  AppColors.purleButtonColor,
                                  AppColors.purleButtonColor.withOpacity(0.8),
                                ]),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                    24,
                                  ),
                                  bottomLeft: Radius.circular(
                                    24,
                                  ),
                                  topRight: Radius.circular(
                                    24,
                                  ),
                                  bottomRight: Radius.circular(
                                    24,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 276 * 0.7,
                              decoration: BoxDecoration(
                                color: AppColors.progressRemainingColor,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(
                                    24,
                                  ),
                                  bottomRight: Radius.circular(
                                    24,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
