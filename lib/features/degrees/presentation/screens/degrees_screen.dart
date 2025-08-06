import 'package:flutter/material.dart';
import 'package:moaazapp/core/constants/app_colors.dart';
import 'package:moaazapp/core/constants/app_constants.dart';
import 'package:moaazapp/core/widgets/custom_app_bar.dart';
import 'package:moaazapp/features/degrees/presentation/widgets/degrees_build.dart';

class DegreesScreen extends StatelessWidget {
  const DegreesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: Column(
        children: [
          SizedBox(height: 50),
          customAppBar(context, title: AppConstants.degreesScreen),
          const SizedBox(height: 21),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [const SizedBox(height: 21), DegreesBuild()],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
