import 'package:flutter/material.dart';

import '../../../appColors.dart';
import '../../../widgets/customElevatedButton.dart';

class TeacherRoleScreen extends StatelessWidget {
  const TeacherRoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/details.png",
                  fit: BoxFit.cover,
                  width: size.width,
                  height: size.height * 0.56,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "How you gonna use this app?",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: AppColors.purleButtonColor,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        "assets/teacherTile.png",
                        height: size.height * 0.25,
                      ),
                      Positioned(
                        top: size.height * 0.05,
                        right: size.width * 0.1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Teacher",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            SizedBox(
                              width: size.width * 0.38,
                              child: Text(
                                "Inspire and educate the future generation. Opt for the teacher profile to share knowledge and mentor students.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Center(
                    child: CustomElevatedButton(
                      buttonTitle: "Submit",
                      onTap: () {
                        if (0 == 0) {
                        } else {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Empty Field'),
                                content: Text('Please enter a name.'),
                                actions: <Widget>[
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Close'),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
