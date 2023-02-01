import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class DiceDemo extends StatefulWidget{
  @override
  State<DiceDemo> createState() => _DiceDemoState();
}

class _DiceDemoState extends State<DiceDemo> {
  @override
  int i = 1;
  int j = 2;
  int r = 0;
  int g = 0;
  int b = 0;
  @override
  void initState() {
    super.initState();
    getColor();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rolling Dice",
          style: TextStyle(
            fontSize: 30,
            fontFamily: "f8"
          ),
        ),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                child: InkWell(
                  onTap: (){
                    randomNum();
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/dice$i.png",
                        color: Color.fromRGBO(r, g, b, 1),
                    ),
                  ),
                )
            ),
            Expanded(
                child: InkWell(
                  onTap: (){
                    randomNum();
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/dice$j.png",
                        color: Color.fromRGBO(r, g, b, 1)
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }

  void randomNum(){
    setState(() {
      i = Random().nextInt(6) + 1;
      j = Random().nextInt(6) + 1;
    });
  }

  void getColor(){
    Timer(
      Duration(seconds: 2),
        (){
        setState(() {
          r = Random().nextInt(255);
          g = Random().nextInt(255);
          b = Random().nextInt(255);
        });
        getColor();
        }
    );
  }
}