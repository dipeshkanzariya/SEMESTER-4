import 'package:api_task_project/home.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image(
              image: AssetImage("assets/images/car1.jpg"),
              fit: BoxFit.cover,
            ),
            Container(
              color: Color(0x99000011),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 120),
                  child: Text(
                    "Rental car",
                    style: TextStyle(
                      fontSize: 50,
                      fontFamily: "f8",
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  child: Text(
                    "Find your favorite car with a good price",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "f8",
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 500, left: 80, right: 80),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return NavigationBarPage();
                        },
                      ));
                    },
                    child: Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Get Started',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                        SizedBox(
                          width: 25,
                          height: 50,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 24.0,
                        )
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
