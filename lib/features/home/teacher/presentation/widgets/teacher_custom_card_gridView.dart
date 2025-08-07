import 'package:flutter/material.dart';
import 'package:moaazapp/core/helper/navigator.dart';
import 'package:moaazapp/features/attendance/teacher/presentation/screens/teacher_add_see_attendance_screen.dart';
import 'package:moaazapp/features/degrees/teacher/presentation/screens/teacher_add_or_see_degrees_screen.dart';
import 'package:moaazapp/features/home/teacher/presentation/widgets/build_teacher_card.dart';
import 'package:moaazapp/screens/auth/login_screen.dart';

class TeacherCustomCardGridView extends StatelessWidget {
  const TeacherCustomCardGridView({super.key});

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
                onTap: () {},
                child: buildTeacherCard(
                  title: 'صور اللوح',
                  width: cardWidth,
                  color: const Color(0xFF536B9D),
                  iconPath: Icons.image_aspect_ratio,
                ),
              ),
              GestureDetector(
                onTap: () =>
                    Nav().push(context, TeacherAddSeeAttendanceScreen()),
                child: buildTeacherCard(
                  title: 'الحضور',
                  width: cardWidth,
                  color: const Color(0xFF536B9D),
                  iconPath: Icons.science,
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
                  Nav().push(context, TeacherAddOrSeeDegreesScreen());
                },
                child: buildTeacherCard(
                  title: 'العلامات',
                  width: cardWidth,
                  color: Colors.amber[700]!,
                  iconPath: Icons.task,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: buildTeacherCard(
                  title: 'التعميمات',
                  width: cardWidth,
                  color: Colors.green[700]!,
                  iconPath: Icons.notes,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 30),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const LoginScreen()),
                    );
                  },
                  child: buildTeacherCard(
                    title: 'Logout',
                    width: cardWidth,
                    color: Colors.red,
                    iconPath: Icons.logout,
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
