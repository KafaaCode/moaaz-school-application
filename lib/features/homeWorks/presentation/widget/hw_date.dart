import 'package:flutter/widgets.dart';
import 'package:moaazapp/core/constants/app_fonts.dart';

Widget hwDate({required String date}) {
  return Text(
    date,
    style: AppFonts.roboto900Grey2.copyWith(fontWeight: FontWeight.w500),
  );
}
