import 'package:flutter/material.dart';
import 'package:moaazapp/core/constants/app_colors.dart';
import 'package:moaazapp/features/home/teacher/presentation/widgets/teacher_class_student_row_build.dart';
import 'package:moaazapp/features/home/teacher/presentation/widgets/teacher_class_text.dart';
import 'package:moaazapp/features/home/teacher/presentation/widgets/teacher_class_year_container.dart';
import 'package:moaazapp/features/home/teacher/presentation/widgets/teacher_custom_card_gridView.dart';
import 'package:moaazapp/features/home/teacher/presentation/widgets/teacher_image_container.dart';
import 'package:moaazapp/features/home/teacher/presentation/widgets/welcome_teacher_name.dart';

class TeacherHomeScreen extends StatelessWidget {
  const TeacherHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: Column(
        children: [
          const SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    welcomeTecaherName(teacherName: 'Teacher'),
                    const SizedBox(height: 10),
                    teacherClassWidget(
                      teacherClass: 'Class 1 A | School no: 2',
                    ),
                    const SizedBox(height: 10),
                    teacherClassYearContainer(year: '2020 - 2021'),
                  ],
                ),
                teacherImageContainer(context),
              ],
            ),
          ),
          const SizedBox(height: 20),
          TeacherClassStudentRowBuild(),
          const SizedBox(height: 30),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: TeacherCustomCardGridView(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
