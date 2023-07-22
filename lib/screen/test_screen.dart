import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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

class _screen_app_bodyState extends State<screen_app_body> {
  final weightcontrolerr = TextEditingController();
  final hightcontrolerr = TextEditingController();
//2ta valu tarif mikonim vase => log => number
  double resu_lte = 0;
  double plus = 0;
  double main = 0;
  String textii = '';
//^ ina bayad inja tarif shan

  PreferredSizeWidget _app_bar() {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      titleTextStyle: TextStyle(color: Colors.white),
      title: Text(
        'تو چنده ؟  BMI',
        style: TextStyle(fontSize: 25, fontFamily: 'dm'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _app_bar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Row(
                //faza ro beyneshon taqsim kon
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 130,
                    child: TextField(
                      onTap: () {
                        Fluttertoast.showToast(
                            msg: "عدد قد اعشاری 1.82",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 3,
                            backgroundColor: Colors.white,
                            textColor: Colors.black,
                            fontSize: 16.0);
                      },
                      //in control dahande in input usereh
                      controller: hightcontrolerr,
                      //chon matn farsiyh
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        //khat rahnama hazf
                        border: InputBorder.none,
                        hintText: ' قد',

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

                onTap: () {
                  //convert data to double
                  final wei = double.parse(weightcontrolerr.text);
                  final hig = double.parse(hightcontrolerr.text);
                  
                  setState(() {
                    resu_lte = wei / (hig * hig);
                    if (resu_lte > 25) {
                      main = 82;
                      plus = 42;
                      textii = 'شما اضافه وزن دارید';
                    } else if (resu_lte >= 18.8 && resu_lte <= 25) {
                      textii = 'وزن شما نرمال است';
                      main = 10;
                      plus = 82;
                    } else {
                      textii = 'وزن شما کمتر نرمال است';
                      main = 82;
                      plus = 42;
                    }
                  });
                },


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
              //hala age mikhaid in click ya onTap ye efect dashte bashe bayad
              // be jaye GestureDetector an InkWell estefadeh konim \/ paiiin
              Container(
                height: 60,
                width: 100,
                child: InkWell(

                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                //onTap
                splashColor: Colors.white,
                onTap: () {
                  Fluttertoast.showToast(
                      msg: '${resu_lte.toStringAsFixed(2)}',
                      // webShowClose: true,
                      toastLength: Toast.LENGTH_SHORT,
                      webBgColor: 12,
                      gravity: ToastGravity.TOP,
                      timeInSecForIosWeb: 3,
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                      fontSize: 16.0);
                },
                child: Text(
                  textAlign:TextAlign.center,
                  //yani data ro neshon bede ke ashariyh vali ba 2ragham ashar
                  //   '${resulte.toStringAsFixed(2)}',
                  '${resu_lte.toStringAsFixed(2)}',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),),),



              SizedBox(
                height: 60,
              ),
              GestureDetector(
                //mitonim be widget hamon ba GestureDetector ghabeliyat tab ya click ezafe konim

                child: Text(
                  '${textii}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // in method maliyat anjam mideh
                onTap: () {
                  setState(() {
                    Fluttertoast.showToast(
                        msg: "bop",
                       // webShowClose: true,
                        toastLength: Toast.LENGTH_SHORT,
                        webBgColor: 12,
                        gravity: ToastGravity.TOP,
                        timeInSecForIosWeb: 3,
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        fontSize: 16.0);
                  });
                },
              ),

              SizedBox(
                height: 60,
              ),
              Left_shape(x: plus),
              SizedBox(
                height: 1,
              ),
              Right_shape(x: main)
            ],
          ),
        ),
      ),
    );
  }
}
