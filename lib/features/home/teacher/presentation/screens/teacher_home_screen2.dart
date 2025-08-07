import 'package:flutter/material.dart';
import 'package:moaazapp/core/constants/app_colors.dart';
import 'package:moaazapp/features/home/student/presentation/widget/custom_student_cards_gridview.dart';
import 'package:moaazapp/features/home/student/presentation/widget/welcome_row_widget.dart';
import 'package:moaazapp/features/home/teacher/presentation/widgets/custom_teacher_cards_grid_view.dart';
import 'package:moaazapp/features/home/teacher/presentation/widgets/teacher_custom_card_gridView.dart';
import 'package:moaazapp/features/home/teacher/presentation/widgets/welcome_teacher_widget.dart';

class TeacherHomeScreen2 extends StatelessWidget {
  const TeacherHomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: Column(
        children: [
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 19),
            child: WelcomeTeacherWidgetRow(),
          ),
          // const SizedBox(height: 75),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
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
