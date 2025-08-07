import 'package:flutter/material.dart';

Widget welcomeTecaherName({required String teacherName}) {
  return Text(
    'Hi $teacherName',
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
  );
}
