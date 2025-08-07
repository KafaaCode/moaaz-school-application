import 'package:flutter/material.dart';
import 'package:moaazapp/core/constants/app_colors.dart';
import 'package:moaazapp/core/constants/app_fonts.dart';
import 'package:moaazapp/core/helper/navigator.dart';
import 'package:moaazapp/core/widgets/teacher_custom_app_bar.dart';
import 'package:moaazapp/features/degrees/teacher/presentation/screens/student_degree_details.dart';
import 'package:moaazapp/features/degrees/teacher/presentation/widgets/student_name_container.dart';

class TeacherDegrees extends StatelessWidget {
  const TeacherDegrees({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: Column(
        children: [
          SizedBox(height: 50),
          teacherCustomAppBar(context, title: 'العلامات'),
          const SizedBox(height: 30),
          Center(
            child: Text(
              'حدد الطالب لاضافة العلامة له',
              style: AppFonts.barlow600White10.copyWith(fontSize: 17),
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
                      onTap: () => Nav().push(context, StudentDegreeDetails()),
                    ),
                    studentNameContainer(studentName: 'studnet 2'),
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
