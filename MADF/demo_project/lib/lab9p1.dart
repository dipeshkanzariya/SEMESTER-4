import 'package:flutter/material.dart';

class Lab9p1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dipesh Kanzariya",
          style: TextStyle(
              fontSize: 30,
              fontFamily: "f8"
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Image.asset("assets/images/dipesh.jpg")
            ),
            Center(
              child: Image(image: NetworkImage("https://imgd.aeplcdn.com/0x0/n/cw/ec/128413/scorpio-classic-exterior-right-front-three-quarter.jpeg?isig=0")),
            )
          ],
        ),
      )
    );
  }
}