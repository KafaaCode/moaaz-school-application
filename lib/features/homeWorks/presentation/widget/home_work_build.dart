import 'package:flutter/widgets.dart';
import 'package:moaazapp/core/helper/navigator.dart';
import 'package:moaazapp/features/homeWorks/presentation/screens/home_work_details.dart';
import 'package:moaazapp/features/homeWorks/presentation/widget/hw_details_column.dart';
import 'package:moaazapp/features/homeWorks/presentation/widget/viewed_or_not_widget.dart';

class HomeWorkBuild extends StatelessWidget {
  const HomeWorkBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 9),
      child: GestureDetector(
        onTap: () {
          Nav().push(context, HomeWorkDetailsScreen());
        },
        child: SizedBox(
          width: double.infinity,
          height: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ViewedOrNotWidget(), HwDetailsColumn()],
          ),
        ),
      ),
    );
  }
}
