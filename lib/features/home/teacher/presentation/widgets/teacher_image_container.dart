import 'package:flutter/material.dart';
import 'package:moaazapp/core/helper/navigator.dart';
import 'package:moaazapp/features/profile/teacher/preentation/screens/teacher_profile_screen.dart';

Widget teacherImageContainer(BuildContext context) {
  return GestureDetector(
    onTap: () => Nav().push(context, TeacherProfileScreen()),
    child: Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey,
      ),
    ),
  );
}
