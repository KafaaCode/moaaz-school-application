import 'package:flutter/material.dart';

class Nav {
  void push(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }

  void pop(BuildContext context) {
    Navigator.pop(context);
  }
}
