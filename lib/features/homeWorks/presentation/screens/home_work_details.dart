import 'package:flutter/material.dart';
import 'package:moaazapp/core/constants/app_colors.dart';
import 'package:moaazapp/core/constants/app_constants.dart';
import 'package:moaazapp/core/constants/app_images.dart';
import 'package:moaazapp/core/widgets/custom_app_bar.dart';
import 'package:moaazapp/features/homeWorks/presentation/widget/hw_details_title_subtitle.dart';

class HomeWorkDetailsScreen extends StatelessWidget {
  const HomeWorkDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: Column(
        children: [
          SizedBox(height: 50),
          customAppBar(context, title: AppConstants.hwScreen),
          const SizedBox(height: 21),
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,

                  children: [
                    const SizedBox(height: 20),
                    hwDetailsTitleSubtitle(
                      title: AppConstants.hwTitle,
                      subtitle: 'واجب مادة الرياضيات',
                    ),
                    const SizedBox(height: 18),
                    hwDetailsTitleSubtitle(
                      title: AppConstants.hwDescription,
                      subtitle: AppConstants.answerQuestionBelow,
                    ),
                    const SizedBox(height: 50),
                    SizedBox(
                      height: 333,
                      width: 333,
                      child: Image.asset(AppImages.hwImage),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
