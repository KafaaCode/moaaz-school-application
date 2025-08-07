import 'package:flutter/material.dart';
import 'package:moaazapp/core/constants/app_constants.dart';
import 'package:moaazapp/core/helper/navigator.dart';
import 'package:moaazapp/features/degrees/student/presentation/screens/degrees_screen.dart';
import 'package:moaazapp/features/home/student/presentation/widget/build_card_square.dart';
import 'package:moaazapp/features/homeWorks/presentation/screens/home_work_screen.dart';
import 'package:moaazapp/features/payments/presentation/screens/payments_screen.dart';
import 'package:moaazapp/features/techerNotes/presentation/screens/techer_notes_screen.dart';
import 'package:moaazapp/screens/auth/login_screen.dart';

class CustomTeacherCardsGridView extends StatelessWidget {
  const CustomTeacherCardsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final cardWidth = MediaQuery.of(context).size.width * 0.42;
    return Column(
      children: [
        const SizedBox(height: 30),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Nav().push(context, TeacherNotesScreen());
                },
                child: buildSquareCard(
                  title: 'صور اللوح',
                  width: cardWidth,
                  color: const Color(0xFF536B9D),
                  iconPath: 'assets/images_buttons/img4.png',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Nav().push(context, PaymentsScreen());
                },
                child: buildSquareCard(
                  title: AppConstants.financePayments,
                  width: cardWidth,
                  color: const Color(0xFF536B9D),
                  iconPath: 'assets/images_buttons/img3.png',
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 30),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Nav().push(context, DegreesScreen());
                },
                child: buildSquareCard(
                  title: AppConstants.studentDegrees,
                  width: cardWidth,
                  color: Colors.amber[700]!,
                  iconPath: 'assets/images_buttons/img1.png',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Nav().push(context, HomeWorkScreen());
                },
                child: buildSquareCard(
                  title: AppConstants.myHomeWorks,
                  width: cardWidth,
                  color: Colors.green[700]!,
                  iconPath: 'assets/images_buttons/img2.png',
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 30),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox.shrink(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const LoginScreen()),
                    );
                  },
                  child: buildSquareCard(
                    title: 'تسجيل الخروج',
                    width: cardWidth,
                    color: Colors.red,
                    iconPath: 'assets/images_buttons/img.png',
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
