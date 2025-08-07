import 'package:flutter/material.dart';
import 'package:moaazapp/core/constants/app_colors.dart';
import 'package:moaazapp/core/widgets/teacher_custom_app_bar.dart';
import 'package:moaazapp/features/attendance/teacher/presentation/widgets/date_textfield.dart';
import 'package:moaazapp/features/degrees/teacher/presentation/widgets/teacher_custom_text_field.dart';
import 'package:moaazapp/features/degrees/teacher/presentation/widgets/teacher_submit_button.dart';

class TeacherAbsenseAddScreen extends StatefulWidget {
  const TeacherAbsenseAddScreen({super.key});

  @override
  State<TeacherAbsenseAddScreen> createState() =>
      _TeacherAbsenseAddScreenState();
}

class _TeacherAbsenseAddScreenState extends State<TeacherAbsenseAddScreen> {
  final TextEditingController reasonController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: Column(
        children: [
          const SizedBox(height: 50),
          teacherCustomAppBar(context, title: 'اضافة غياب'),
          const SizedBox(height: 50),
          teacherCustomTextField(label: 'السبب', controller: reasonController),
          const SizedBox(height: 20),
          DateTextField(),
          const SizedBox(height: 20),
          TeacherSubmitButton(title: 'ارسال'),
        ],
      ),
    );
  }
}
