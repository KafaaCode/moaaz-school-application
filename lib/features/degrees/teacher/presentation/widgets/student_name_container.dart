import 'package:flutter/material.dart';
import 'package:moaazapp/core/constants/app_colors.dart';
import 'package:moaazapp/core/constants/app_fonts.dart';

Widget studentNameContainer({
  required String studentName,
  void Function()? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.lightBlue,
      ),
      width: double.infinity,
      height: 40,
      child: Center(
        child: Text(
          studentName,
          style: AppFonts.barlow600White10.copyWith(fontSize: 18),
        ),
      ),
    ),
  );
}
