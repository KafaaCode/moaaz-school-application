import 'package:flutter/material.dart';
import 'package:moaazapp/core/constants/app_colors.dart';
import 'package:moaazapp/core/widgets/teacher_custom_app_bar.dart';
import 'package:moaazapp/features/degrees/teacher/presentation/widgets/teacher_custom_text_field.dart';
import 'package:moaazapp/features/degrees/teacher/presentation/widgets/teacher_submit_button.dart';

class TeacherAddDegreeScreen extends StatefulWidget {
  const TeacherAddDegreeScreen({super.key});

  @override
  State<TeacherAddDegreeScreen> createState() => _TeacherAddDegreeScreenState();
}

class _TeacherAddDegreeScreenState extends State<TeacherAddDegreeScreen> {
  final TextEditingController classNameController = TextEditingController();
  final TextEditingController degreeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: Column(
        children: [
          const SizedBox(height: 50),
          teacherCustomAppBar(context, title: 'اضافة درجة'),
          const SizedBox(height: 80),
          teacherCustomTextField(
            label: 'المادة',
            controller: classNameController,
          ),
          const SizedBox(height: 50),
          teacherCustomTextField(label: 'الدرجة', controller: degreeController),
          const SizedBox(height: 20),
          TeacherSubmitButton(title: 'ارسال'),
        ],
      ),
    );
  }
}
