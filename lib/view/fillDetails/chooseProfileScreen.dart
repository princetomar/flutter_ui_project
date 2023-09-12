import 'package:flutter/material.dart';
import '../../appColors.dart';
import '../../widgets/customElevatedButton.dart';

class ChooseProfileScreen extends StatefulWidget {
  ChooseProfileScreen({super.key});

  @override
  State<ChooseProfileScreen> createState() => _ChooseProfileScreenState();
}

class _ChooseProfileScreenState extends State<ChooseProfileScreen> {
  String? userRole;
  final List<String> roles = ["Student", "Teacher", "Parent"];
  bool isStudent = false;
  bool isTeacher = false;
  bool isParent = false;

  void setUserRole(String role) {
    setState(() {
      userRole = role;
    });
  }

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
                    height: size.height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      UserRoleButton(
                        role: roles[0],
                        isSelected: isStudent,
                        onPressed: () {
                          setState(() {
                            isStudent = !isStudent;
                            isTeacher = false;
                            isParent = false;
                            userRole = roles[0];
                          });
                        },
                      ),
                      UserRoleButton(
                        role: roles[1],
                        isSelected: isTeacher,
                        onPressed: () {
                          setState(() {
                            isTeacher = !isTeacher;
                            isStudent = false;
                            isParent = false;
                            userRole = roles[1];
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  UserRoleButton(
                    role: roles[2],
                    isSelected: isParent,
                    onPressed: () {
                      setState(() {
                        isParent = !isParent;
                        isTeacher = false;
                        isStudent = false;
                        userRole = roles[2];
                      });
                    },
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  Center(
                    child: CustomElevatedButton(
                      buttonTitle: "Submit",
                      onTap: () {
                        if (userRole!.isNotEmpty) {
                          print("User Role : $userRole");
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

class UserRoleButton extends StatelessWidget {
  final String role;
  final bool isSelected;
  final VoidCallback onPressed;

  UserRoleButton({
    required this.role,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43.0,
      width: 152,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          primary: isSelected
              ? AppColors.purleButtonColor
              : AppColors.lightPurpleButtonColor,
        ),
        child: Text(
          role,
          style: TextStyle(
            color: isSelected ? Colors.white : AppColors.titleTextColor,
          ),
        ),
      ),
    );
  }
}
