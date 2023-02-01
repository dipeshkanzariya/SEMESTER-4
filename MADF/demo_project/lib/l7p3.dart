import 'package:flutter/material.dart';

class l7p3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
            ),
            flex: 2,
          ),
          Expanded(
            child: Container(
              color: Colors.black,
            ),
            flex: 2,
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
            ),
            flex: 2,
          ),

        ],
      ),
    );
  }
}