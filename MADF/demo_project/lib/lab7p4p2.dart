import 'package:flutter/material.dart';

class Lab7p4p2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),backgroundColor: Colors.red,
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.grey,
                  ),
                  flex: 2,
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                  flex: 3,
                ),
                Expanded(
                  child: Container(
                    color: Colors.orange,
                  ),
                  flex: 3,
                ),
              ],
            ),
          ),

          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.orange,
                  ),
                  flex: 3,
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                  ),
                  flex: 3,
                ),
                Expanded(
                  child: Container(
                    color: Colors.black,
                  ),
                  flex: 2,
                ),
              ],
            ),
          ),

          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blueAccent,
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                  ),
                  flex: 3,
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
        ],
      ),
    );
  }
}