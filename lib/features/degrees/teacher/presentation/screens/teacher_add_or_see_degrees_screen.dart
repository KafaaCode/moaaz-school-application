import 'package:flutter/material.dart';
import 'package:moaazapp/core/constants/app_colors.dart';
import 'package:moaazapp/core/helper/navigator.dart';
import 'package:moaazapp/core/widgets/teacher_custom_app_bar.dart';
import 'package:moaazapp/features/degrees/teacher/presentation/screens/teacher_add_degree.dart';
import 'package:moaazapp/features/degrees/teacher/presentation/screens/teacher_degrees.dart';
import 'package:moaazapp/features/degrees/teacher/presentation/widgets/add_or_see_degree_container.dart';

class TeacherAddOrSeeDegreesScreen extends StatelessWidget {
  const TeacherAddOrSeeDegreesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: Column(
        children: [
          const SizedBox(height: 50),
          teacherCustomAppBar(context, title: 'العلامات'),
          SizedBox(height: MediaQuery.of(context).size.height * 0.35),
          AddOrSeeDegreeContainer(
            title: 'اضافة العلامات',
            onTap: () => Nav().push(context, TeacherAddDegreeScreen()),
          ),
          const SizedBox(height: 15),
          AddOrSeeDegreeContainer(
            title: 'مشاهدة العلامات',
            onTap: () => Nav().push(context, TeacherDegrees()),
          ),
        ],
      ),
    );
  }
}
