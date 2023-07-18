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
        Row(
          //faza ro beyneshon taqsim kon
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 130,
              child: TextField(
                //chon matn farsiyh
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  //khat rahnama hazf
                  border: InputBorder.none,
                  hintText: 'قد',

                  hintStyle: TextStyle(
                    color: Colors.green,
                  ),
                ),
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                //vorodi chi bashe

                keyboardType: TextInputType.number,
              ),
            ),
            Container(
              width: 130,
              child: TextField(
                //chon matn farsiyh
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  //khat rahnama hazf
                  border: InputBorder.none,
                  hintText: 'وزن',

                  hintStyle: TextStyle(
                    color: Colors.red,
                  ),
                ),
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                //vorodi chi bashe

                keyboardType: TextInputType.number,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
