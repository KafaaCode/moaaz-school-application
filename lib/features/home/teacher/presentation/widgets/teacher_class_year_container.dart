import 'package:flutter/material.dart';

Widget teacherClassYearContainer({required String year}) {
  return Container(
    width: 100,
    height: 30,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Center(
      child: Text(year, style: TextStyle(color: Colors.black)),
    ),
  );
}
