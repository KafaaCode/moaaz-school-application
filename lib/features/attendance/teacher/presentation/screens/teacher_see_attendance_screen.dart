import 'package:flutter/material.dart';
import 'package:moaazapp/core/constants/app_colors.dart';
import 'package:moaazapp/core/constants/app_fonts.dart';
import 'package:moaazapp/core/helper/navigator.dart';
import 'package:moaazapp/core/widgets/teacher_custom_app_bar.dart';
import 'package:moaazapp/features/attendance/teacher/presentation/screens/teacher_absense_add_screen.dart';
import 'package:moaazapp/features/degrees/teacher/presentation/widgets/student_name_container.dart';

class TeacherSeeAttendanceScreen extends StatelessWidget {
  const TeacherSeeAttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: Column(
        children: [
          const SizedBox(height: 50),
          teacherCustomAppBar(context, title: 'الحضور'),
          const SizedBox(height: 50),
          Center(
            child: Text(
              'حدد الطالب لاضافة الغياب له',
              style: AppFonts.barlow600White10.copyWith(fontSize: 18),
            ),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 25),
                    studentNameContainer(
                      studentName: 'student 1',
                      onTap: () =>
                          Nav().push(context, TeacherAbsenseAddScreen()),
                    ),
                    studentNameContainer(studentName: 'student 2'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
