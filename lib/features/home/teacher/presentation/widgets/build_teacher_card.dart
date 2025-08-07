import 'package:flutter/material.dart';
import 'package:moaazapp/core/constants/app_colors.dart';

Widget buildTeacherCard({
  required String title,
  required double width,
  required Color color,
  required IconData iconPath,
}) {
  return Container(
    width: width,
    height: width,
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 8,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            // color: color.withOpacity(0.15),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(iconPath, color: Colors.orange, size: 70),
        ),
        Spacer(),
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.blueColor,
          ),
        ),
      ],
    ),
  );
}
