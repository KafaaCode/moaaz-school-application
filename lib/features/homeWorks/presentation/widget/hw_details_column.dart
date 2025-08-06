import 'package:flutter/widgets.dart';
import 'package:moaazapp/core/constants/app_constants.dart';
import 'package:moaazapp/features/homeWorks/presentation/widget/hw_date.dart';
import 'package:moaazapp/features/homeWorks/presentation/widget/hw_name.dart';
import 'package:moaazapp/features/homeWorks/presentation/widget/show_hw_container.dart';

class HwDetailsColumn extends StatelessWidget {
  const HwDetailsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // const SizedBox(height: 20),
        hwName(name: AppConstants.mathHomeWork),
        const SizedBox(height: 5),
        hwDate(date: 'Wed, 24,Jun,2024, 8:00AM'),
        const SizedBox(height: 5),
        ShowHwContainer(),
      ],
    );
  }
}
