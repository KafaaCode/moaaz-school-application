import 'package:flutter/widgets.dart';
import 'package:moaazapp/core/constants/app_constants.dart';

class AppFonts {
  // ------  Sans -------//
  static const sans400White30 = TextStyle(
    fontFamily: AppConstants.sans,
    color: Color(0xffFFFFFF),
    fontWeight: FontWeight.w400,

    fontSize: 30,
  );

  static const sans400White14 = TextStyle(
    fontFamily: AppConstants.sans,
    fontSize: 14,
    color: Color(0xffFFFFFF),
    fontWeight: FontWeight.w400,
  );

  static const sans700White18 = TextStyle(
    fontFamily: AppConstants.sans,
    color: Color(0xffFFFFFF),
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );

  //--------- Barlow --------//

  static const barlow600White10 = TextStyle(
    fontFamily: AppConstants.barlow,
    color: Color(0xffFFFFFF),
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  //------- Roboto --------//
  static const roboto900Grey2 = TextStyle(
    fontFamily: AppConstants.roboto,
    fontSize: 14,
    color: Color(0xff726C6C),
    fontWeight: FontWeight.w900,
  );
}
