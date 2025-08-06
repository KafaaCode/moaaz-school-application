import 'package:flutter/material.dart';
import 'package:moaazapp/core/constants/app_colors.dart';
import 'package:moaazapp/features/home/student/presentation/widget/custom_student_cards_gridview.dart';
import 'package:moaazapp/features/home/student/presentation/widget/welcome_row_widget.dart';

class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: Column(
        children: [
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 19),
            child: WelcomeRowWidget(),
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
                child: CustomStudentCardsGridview(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
