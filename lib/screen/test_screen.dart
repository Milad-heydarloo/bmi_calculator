import 'package:flutter/material.dart';

import '../constance/constance.dart';
import '../widget/background_shape_left.dart';
import '../widget/background_shape_right.dart';

class screen_app extends StatelessWidget {
  const screen_app({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
          SizedBox(
            height: 50,
          ),
          Text(
            'محاسبه کن ',
            style: TextStyle(
              color: Colors.amber,
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            '31',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            'شما در خطری',
            style: TextStyle(
              color: Colors.green,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Left_shape(x: 120.0),
          SizedBox(
            height: 10,
          ),
          Right_shape(x: 120.0),
          Left_shape(x: 120.0),
          SizedBox(
            height: 5,
          ),
          Right_shape(x: 120.0)
        ],
      ),
    );
  }
}
