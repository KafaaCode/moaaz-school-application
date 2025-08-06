import 'package:flutter/widgets.dart';
import 'package:moaazapp/core/constants/app_colors.dart';
import 'package:moaazapp/core/constants/app_fonts.dart';

class DegreeContainer extends StatelessWidget {
  const DegreeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
            color: AppColors.blueColor,
            borderRadius: BorderRadius.circular(16),
          ),
          width: 75,
          height: 35,
          child: Center(child: Text('50/60', style: AppFonts.barlow600White10)),
        ),
        Spacer(),
      ],
    );
  }
}
