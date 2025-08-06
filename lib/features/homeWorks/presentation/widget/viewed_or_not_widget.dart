import 'package:flutter/widgets.dart';
import 'package:moaazapp/core/constants/app_colors.dart';
import 'package:moaazapp/core/constants/app_constants.dart';
import 'package:moaazapp/core/constants/app_fonts.dart';

class ViewedOrNotWidget extends StatelessWidget {
  const ViewedOrNotWidget({super.key});

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
          child: Center(
            child: Text(AppConstants.viewed, style: AppFonts.barlow600White10),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
