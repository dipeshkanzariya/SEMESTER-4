import 'dart:async';

import 'package:demo_project/pre_login.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget{
  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => PreLogin()
            )
        )
    );
  }
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: Colors.grey,
        ),
        child: Image.asset("assets/images/logo.png")
    );
  }
}