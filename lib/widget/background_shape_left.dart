import 'package:flutter/material.dart';

class Left_shape extends StatelessWidget {
  const Left_shape({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 150,
            decoration:
                //in doresho gerd mikoneh
                BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.green),
          ),
        ],
      ),
    );
  }
}
