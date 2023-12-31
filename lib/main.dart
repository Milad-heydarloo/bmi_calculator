import 'package:bmi_calculator/screen/test_screen.dart';
import 'package:bmi_calculator/widget/background_shape_left.dart';
import 'package:bmi_calculator/widget/background_shape_right.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(run_app());
}

class run_app extends StatelessWidget {
  const run_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'dm'),
        debugShowCheckedModeBanner: false,
        home: screen_app_body());
  }
}
