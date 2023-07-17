import 'package:flutter/material.dart';

class Right_shape extends StatelessWidget {
  const Right_shape({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 40,
            width: 150,
            decoration:
                //in doresho gerd mikoneh
                BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                    color: Colors.amber),
          ),
        ],
      ),
    );
  }
}
