import 'package:flutter/material.dart';
import 'package:moaazapp/core/constants/app_colors.dart';
import 'package:moaazapp/core/constants/app_constants.dart';

class AttendanceFeeContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  const AttendanceFeeContainer({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 163,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.blueColor, width: 2),
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          SizedBox(height: 60, width: 72, child: Image.asset(imagePath)),
          Text(
            title,
            style: TextStyle(
              fontFamily: AppConstants.bebeNue,
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 35,
            ),
          ),
          const SizedBox(height: 10),
          Text(subtitle, style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
