import 'package:demo_project/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PreLogin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset("assets/images/bg_matrimony_prelogin.jpg",
                    fit: BoxFit.cover,
                  ),
                  Container(color: Color(0x99000000)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Image.asset("assets/images/logo.png"),
                      ),
                      Center(
                        child: Text("INDIA'S \n MOST TRUSTED \n MATRIMONIAL BRAND",
                        textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
          ),
          Row(
            children: [
              Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return Login();
                      }));
                    },
                    child: Container(
                      color: Colors.black,
                      padding: EdgeInsets.all(15),
                      child: Text("Login",
                      textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  padding: EdgeInsets.all(15),
                  child: Text("Sign Up -->",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}