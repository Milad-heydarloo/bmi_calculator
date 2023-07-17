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
      home: Scaffold(
        body: SafeArea(
          child: Column(children: [
            Right_shape(x: 124.0),
            Left_shape(x: 145.0),
          ]),
        ),
      ),
    );
  }
}
