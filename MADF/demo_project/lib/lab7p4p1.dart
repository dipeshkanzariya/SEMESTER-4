import 'package:flutter/material.dart';

class Lab7p4p1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        color: Colors.red,
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.green,
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.lightBlue,
                    ),
                    flex: 2,
                  ),
                ],
              ),
          ),

          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.grey,
                  ),
                  flex: 2,
                ),
                Expanded(
                  child: Container(
                    color: Colors.lightBlue,
                  ),
                  flex: 2,
                ),
                Expanded(
                  child: Container(
                    color: Colors.purple,
                  ),
                  flex: 2,
                ),
              ],
            ),
          ),

          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.black,
                  ),
                  flex: 2,
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                  ),
                  flex: 2,
                ),
                Expanded(
                  child: Container(
                    color: Colors.orange,
                  ),
                  flex: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}