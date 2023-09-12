import 'package:flutter/material.dart';

import '../appColors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback onTap;
  const CustomElevatedButton(
      {super.key, required this.buttonTitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 319,
      height: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.purleButtonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        onPressed: onTap,
        child: Text(
          buttonTitle,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.buttonTextColor,
          ),
        ),
      ),
    );
  }
}
