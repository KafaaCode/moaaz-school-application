import 'package:flutter/material.dart';
import 'package:moaazapp/core/constants/app_colors.dart';
import 'package:moaazapp/core/constants/app_fonts.dart';
import 'package:moaazapp/features/home/student/presentation/widget/home_screen_painter.dart';
import 'package:moaazapp/features/home/student/presentation/widget/white_circle_paint.dart';
import 'package:moaazapp/features/home/teacher/presentation/widgets/teacher_image_container.dart';

class TopSectionBuild extends StatelessWidget {
  const TopSectionBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Stack(
        children: [
          Positioned(top: 74, left: 17, child: whiteCirclePaint()),
          Positioned(top: 120, left: 4, child: whiteCirclePaint()),
          Positioned(top: 180, left: 80, child: whiteCirclePaint()),
          Positioned(
            top: 100,
            left: 100,
            right: 100,
            child: whiteCirclePaint(),
          ),
          Positioned(top: 65, right: 10, child: whiteCirclePaint()),
          Positioned(top: 65, right: 100, child: whiteCirclePaint()),
          Positioned(top: 160, right: 1, child: whiteCirclePaint()),
          Positioned(top: 140, right: 110, child: whiteCirclePaint()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 38,

                    child: Text('Hi Yash', style: AppFonts.sans400White30),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    'Class XI-B | Roll no: 04',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 199, 196, 196),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 25,
                    width: 84,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        '2020-2021',
                        style: AppFonts.sans400White14.copyWith(
                          color: AppColors.blueColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 120),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 10),
                  teacherImageContainer(context),
                  SizedBox.shrink(),
                ],
              ),
            ],
          ),
          Positioned(
            top: 160,
            left: 35,
            child: SizedBox(
              height: 20,
              width: 20,
              child: CustomPaint(painter: DashboardPainter()),
            ),
          ),
          Positioned(
            right: 35,
            top: 70,
            child: SizedBox(
              height: 20,
              width: 20,
              child: CustomPaint(painter: DashboardPainter()),
            ),
          ),
        ],
      ),
    );
  }
}
