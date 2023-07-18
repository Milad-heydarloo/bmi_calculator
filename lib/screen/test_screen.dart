import 'package:flutter/material.dart';

import '../constance/constance.dart';
import '../widget/background_shape_left.dart';
import '../widget/background_shape_right.dart';

class screen_app_body extends StatefulWidget {
  const screen_app_body({super.key});

  @override
  State<screen_app_body> createState() => _screen_app_bodyState();
}

//in ro tarif mikonim ta meghdar vorodi az karbar ro tosh save konim
//bad boro to method textfild
final weightcontrolerr = TextEditingController();
final hightcontrolerr = TextEditingController();

class _screen_app_bodyState extends State<screen_app_body> {
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
                  //in control dahande in input usereh
                  controller: hightcontrolerr,
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
                  controller: weightcontrolerr,
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
          InkWell(
            //click user
            //mikhaim ro matn click shod data az input gerfteh beshe va bereh to valu class

            onTap: () {},
            child: Text(
              'محاسبه کن ',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 42,
                fontWeight: FontWeight.bold,
              ),
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
