import 'package:bmi_calculator/constance/constance.dart';
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
        appBar: AppBar(title: Text('BMI')),
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  //khat rahnama hazf
                  border: InputBorder.none,
                  hintText: 'وزن',

                  hintStyle: TextStyle(color: greenback),
                ),
                style: TextStyle(
                  color: greenback,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                //vorodi chi bashe

                keyboardType: TextInputType.number,
              ),
            ),
            Right_shape(x: 124.0),
            Left_shape(x: 145.0),
          ]),
        ),
      ),
    );
  }
}
