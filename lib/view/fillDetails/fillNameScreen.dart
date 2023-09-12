import 'package:flutter/material.dart';
import '../../appColors.dart';

class FillNameScreen extends StatelessWidget {
  const FillNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextEditingController nameController = TextEditingController();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.48),
        child: Container(
          width: double.infinity,
          child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/details.png",
              fit: BoxFit.cover,
              width: size.width,
              height: size.height * 0.55,
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            Text(
              "How we should call you?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: AppColors.purleButtonColor,
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
          ],
        ),
      ),
    );
  }
}
