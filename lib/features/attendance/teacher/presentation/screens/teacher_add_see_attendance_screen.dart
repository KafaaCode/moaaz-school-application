import 'package:flutter/material.dart';
import 'package:moaazapp/core/constants/app_colors.dart';
import 'package:moaazapp/core/helper/navigator.dart';
import 'package:moaazapp/core/widgets/teacher_custom_app_bar.dart';
import 'package:moaazapp/features/attendance/teacher/presentation/screens/teacher_see_attendance_screen.dart';
import 'package:moaazapp/features/attendance/teacher/presentation/widgets/add_see_attendance_widget.dart';

class TeacherAddSeeAttendanceScreen extends StatelessWidget {
  const TeacherAddSeeAttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: Column(
        children: [
          const SizedBox(height: 50),
          teacherCustomAppBar(context, title: 'الحضور'),
          SizedBox(height: MediaQuery.of(context).size.height * 0.35),
          AddSeeAttendanceContainer(
            title: 'اضافة لحضور طالب',
            onTap: () => Nav().push(context, TeacherSeeAttendanceScreen()),
          ),
          const SizedBox(height: 20),
          AddSeeAttendanceContainer(title: 'مشاهدة لحضور طالب'),
        ],
      ),
    );
  }
}
