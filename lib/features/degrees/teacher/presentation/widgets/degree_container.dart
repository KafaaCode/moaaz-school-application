import 'package:flutter/material.dart';
import 'package:moaazapp/features/degrees/teacher/presentation/widgets/class_section_inside_container.dart';
import 'package:moaazapp/features/degrees/teacher/presentation/widgets/degree_scetion_iside_container.dart';

class DegreeContainer extends StatelessWidget {
  const DegreeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        width: double.infinity,
        height: 52,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            degreeSectionInseideContainer(degree: '10'),
            classSectionInsideContainer(className: 'رياضيات'),
          ],
        ),
      ),
    );
  }
}
