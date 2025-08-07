import 'package:flutter/material.dart';

class AddOrSeeDegreeContainer extends StatelessWidget {
  final void Function()? onTap;
  final String title;
  const AddOrSeeDegreeContainer({super.key, this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 135,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(child: Text(title)),
      ),
    );
  }
}
