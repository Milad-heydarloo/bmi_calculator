import 'package:flutter/material.dart';

import '../constance/constance.dart';
import '../widget/background_shape_left.dart';
import '../widget/background_shape_right.dart';

class screen_app extends StatelessWidget {
  const screen_app({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
      ],
    );
  }
}
