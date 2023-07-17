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
        body: SafeArea(
          child: Container(
            child: Text('data'),
            //in decor ro mitonid poshte child kar konid
            decoration:
                //in doresho gerd mikoneh
                BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5)),
            ),
          ),
        ),
      ),
    );
  }
}
