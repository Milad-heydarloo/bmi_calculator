import 'package:bmi_calculator/constance/constance.dart';
import 'package:flutter/material.dart';

class Right_shape extends StatelessWidget {
  //ba in kar mitonim behesh arz pass bedim ke constractorsh dar ebteda behesh ye 0 mideh
  final x;
  const Right_shape({super.key, this.x = 0});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 40,
            width: x,
            decoration:
                //in doresho gerd mikoneh
                BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                    color: Colors.red),
          ),
        ],
      ),
    );
  }
}
