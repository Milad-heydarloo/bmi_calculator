import 'package:flutter/material.dart';

class Left_shape extends StatelessWidget {
  final double x;
  const Left_shape({super.key, this.x = 0});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: x,
            decoration:
                //in doresho gerd mikoneh
                BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.green),
          ),
          Text(
            'شاخص مثبت',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
