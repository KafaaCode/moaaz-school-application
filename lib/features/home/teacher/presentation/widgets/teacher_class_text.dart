import 'package:flutter/material.dart';
import 'package:moaazapp/core/constants/app_fonts.dart';

Widget teacherClassWidget({required String teacherClass}) {
  return Text(
    teacherClass,
    style: AppFonts.roboto900Grey2.copyWith(color: Colors.grey),
  );
}
