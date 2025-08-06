import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:moaazapp/core/constants/app_colors.dart';
import 'package:moaazapp/core/constants/app_constants.dart';
import 'package:moaazapp/core/constants/app_fonts.dart';

class ShowHwContainer extends StatelessWidget {
  const ShowHwContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 100,
      decoration: BoxDecoration(
        color: AppColors.blueColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          AppConstants.show,
          style: AppFonts.roboto900Grey2.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
