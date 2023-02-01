import 'package:flutter/material.dart';

class Lab9p2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image(image: NetworkImage("https://c4.wallpaperflare.com/wallpaper/170/757/221/simple-background-wallpaper-preview.jpg",),
            fit: BoxFit.cover,
          ),
          Container(color: Color(0x99000000),),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 200),
                child: Center(
                  child: Text("Dipesh Kanzariya",
                    style: TextStyle(
                      fontSize: 60,
                      fontFamily: "f8",
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}