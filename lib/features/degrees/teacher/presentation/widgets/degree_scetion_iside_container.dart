import 'package:flutter/material.dart';

Widget degreeSectionInseideContainer({required String degree}) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0),
    child: Text(
      'العلامة : $degree',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 17,
      ),
    ),
  );
}
