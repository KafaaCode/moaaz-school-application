import 'package:flutter/material.dart';
import 'package:moaazapp/core/constants/app_colors.dart';
import 'package:moaazapp/core/models/profile_list_model.dart';
import 'package:moaazapp/features/profile/teacher/preentation/widgets/attendance_fee_container.dart';
import 'package:moaazapp/features/profile/teacher/preentation/widgets/top_section_build.dart';

class TeacherProfileScreen extends StatelessWidget {
  const TeacherProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 100),
              TopSectionBuild(),
              const SizedBox(height: 20),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: GridView.builder(
                    itemCount: profileSections.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 100,
                        width: 80,
                        child: Column(
                          children: [
                            const SizedBox(height: 80),
                            Image.asset(profileSections[index].imagePath),
                            const SizedBox(height: 10),
                            Text(profileSections[index].title),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.32,
            left: MediaQuery.of(context).size.width * 0.08,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AttendanceFeeContainer(
                  imagePath: 'assets/student.png',
                  title: '80.39 %',
                  subtitle: 'Attendance',
                ),
                SizedBox(width: 20),
                AttendanceFeeContainer(
                  imagePath: 'assets/fees.png',
                  title: '₹6400',
                  subtitle: 'Fees Due',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
