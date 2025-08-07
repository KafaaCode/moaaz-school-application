import 'package:flutter/material.dart';

class TeacherSubmitButton extends StatelessWidget {
  final void Function()? onTap;
  final String title;
  const TeacherSubmitButton({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        width: double.infinity,
        height: 43,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(child: Text(title)),
      ),
    );
  }
}
