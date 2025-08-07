import 'package:flutter/material.dart';

Widget classSectionInsideContainer({required String className}) {
  return Padding(
    padding: const EdgeInsets.only(right: 15.0),
    child: Text(
      className,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 17,
      ),
    ),
  );
}
