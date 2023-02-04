import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Container(
          child: Text("No data found",
          style: TextStyle(
            fontSize: 30,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),),
        ),
      ),
    ),);
  }
}