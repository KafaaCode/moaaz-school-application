import 'package:flutter/material.dart';
import 'package:moaazapp/features/home/teacher/presentation/widgets/class_student_teacher_container.dart';

class TeacherClassStudentRowBuild extends StatelessWidget {
  const TeacherClassStudentRowBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        classStudentTeacherContainer(title: 'Class'),
        classStudentTeacherContainer(title: 'Student'),
      ],
    );
  }
}
