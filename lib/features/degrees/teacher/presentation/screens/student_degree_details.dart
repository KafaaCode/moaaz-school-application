import 'package:flutter/material.dart';
import 'package:moaazapp/core/constants/app_colors.dart';
import 'package:moaazapp/core/widgets/teacher_custom_app_bar.dart';
import 'package:moaazapp/features/degrees/teacher/presentation/widgets/degree_container.dart';

class StudentDegreeDetails extends StatelessWidget {
  const StudentDegreeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          teacherCustomAppBar(context, title: 'العلامات'),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19.0),
            child: Text(
              'عرض علامات student',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 15),
          DegreeContainer(),
        ],
      ),
    );
  }
}
