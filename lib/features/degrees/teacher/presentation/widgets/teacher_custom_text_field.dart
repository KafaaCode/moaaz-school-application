import 'package:flutter/material.dart';

Widget teacherCustomTextField({
  required String label,
  required TextEditingController controller,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        label: Padding(
          padding: const EdgeInsets.only(bottom: 25.0),
          child: Text(
            label,
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
          ),
        ),
      ),
    ),
  );
}
