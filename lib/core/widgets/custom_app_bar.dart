import 'package:flutter/material.dart';
import 'package:moaazapp/core/constants/app_fonts.dart';
import 'package:moaazapp/core/constants/app_images.dart';
import 'package:moaazapp/core/helper/navigator.dart';

Widget customAppBar(BuildContext context, {required String title}) {
  return Padding(
    padding: const EdgeInsets.only(left: 11, right: 11),
    child: Row(
      children: [
        IconButton(
          onPressed: () {
            Nav().pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 25),
        ),

        SizedBox(
          height: 25,
          // width: 171,
          child: Text(title, style: AppFonts.sans700White18),
        ),
        Spacer(),
        SizedBox(
          height: 35,
          width: 60,
          child: Image.asset(AppImages.logoImage),
        ),
      ],
    ),
  );
}
