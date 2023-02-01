import 'package:flutter/material.dart';

class BirthdayCard extends StatelessWidget{
var name;
var date;


  BirthdayCard({super.key,this.name,this.date});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image(image: NetworkImage("https://wallpaperaccess.com/full/3290919.jpg"),
            fit: BoxFit.cover,
          ),
          Container(color: Color(0x99AAAAAA),),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 320),
                child: Text("Happy Birthday",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 70,
                    fontFamily: "f8",
                    color: Colors.pinkAccent
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: Text(name ?? "Enter Name",
                  style: TextStyle(
                    fontSize: 80,
                    color: Colors.pinkAccent,
                    fontWeight: FontWeight.bold,
                    fontFamily: "f8",
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(" Wishing you the biggest slice of happy today.",
                  style: TextStyle(
                    fontFamily: "f8",
                    fontSize: 30,
                    color: Colors.red
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}