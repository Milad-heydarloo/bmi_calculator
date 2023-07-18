import 'package:bmi_calculator/constance/constance.dart';
import 'package:bmi_calculator/screen/test_screen.dart';
import 'package:bmi_calculator/widget/background_shape_left.dart';
import 'package:bmi_calculator/widget/background_shape_right.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(run_app());
}

PreferredSizeWidget _app_bar() {
  return AppBar(
    backgroundColor: Colors.black,
    centerTitle: true,
    titleTextStyle: TextStyle(color: Colors.white),
    title: Text(
      ' تو جنده ؟  BMI',
      style: TextStyle(fontSize: 25, fontFamily: 'dm'),
    ),
  );
}

class run_app extends StatelessWidget {
  const run_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'dm'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: _app_bar(),
        body: SafeArea(child: screen_app_body()),
      ),
    );
  }
}
