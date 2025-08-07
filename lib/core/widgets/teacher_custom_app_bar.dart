import 'package:flutter/material.dart';
import 'package:moaazapp/core/constants/app_fonts.dart';
import 'package:moaazapp/core/helper/navigator.dart';

Widget teacherCustomAppBar(BuildContext context, {required String title}) {
  return Row(
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
    ],
  );
}
