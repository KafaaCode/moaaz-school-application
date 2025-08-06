import 'package:flutter/widgets.dart';
import 'package:moaazapp/core/constants/app_fonts.dart';

Widget hwDetailsTitleSubtitle({
  required String title,
  required String subtitle,
}) {
  return SizedBox(
    height: 60,
    width: 185,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          style: AppFonts.roboto900Grey2.copyWith(
            fontSize: 17,
            color: Color(0xff514E4E),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          subtitle,
          style: AppFonts.roboto900Grey2.copyWith(
            color: Color(0xff726C6C),
            fontSize: 12,
          ),
        ),
      ],
    ),
  );
}
