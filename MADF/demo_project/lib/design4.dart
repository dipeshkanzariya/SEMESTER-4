import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Design4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                        color: Colors.red,
                        margin: EdgeInsets.all(5.0),
                        padding: EdgeInsets.all(7.0),
                        child: Image.asset(
                            "assets/images/image 2.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    flex: 4,
                  ),
                  Expanded(
                      child: Container(
                        color: Colors.blue,
                        margin: EdgeInsets.all(5.0),
                        padding: EdgeInsets.all(7.0),
                        child: Image.asset(
                            "assets/images/image 2.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    flex: 2,
                  ),
                  Expanded(
                      child: Container(
                        color: Colors.grey,
                        margin: EdgeInsets.all(5.0),
                        padding: EdgeInsets.all(7.0),
                        child: Image.asset(
                            "assets/images/image 2.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    flex: 2,
                  ),
                ],
              ),
            flex: 1,
          ),
          Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Row(
                        children: [
                          Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                        color: Colors.black,
                                        margin: EdgeInsets.all(5.0),
                                        padding: EdgeInsets.all(7.0),
                                        child: Image.asset(
                                            "assets/images/image 2.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    flex: 3,
                                  ),
                                  Expanded(
                                      child: Container(
                                        color: Colors.green,
                                        margin: EdgeInsets.all(5.0),
                                        padding: EdgeInsets.all(7.0),
                                        child: Image.asset(
                                            "assets/images/image 2.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    flex: 2,
                                  ),
                                ],
                              )
                          ),
                          Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                        color: Colors.green,
                                        margin: EdgeInsets.all(5.0),
                                        padding: EdgeInsets.all(7.0),
                                        child: Image.asset(
                                            "assets/images/image 2.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                  ),
                                  Expanded(
                                      child: Container(
                                        color: Colors.black,
                                        margin: EdgeInsets.all(5.0),
                                        padding: EdgeInsets.all(7.0),
                                        child: Image.asset(
                                            "assets/images/image 2.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                  ),
                                ],
                              )
                          ),
                        ],
                      ),
                    flex: 3,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                            child: Container(
                              color: Colors.red,
                              margin: EdgeInsets.all(5.0),
                              padding: EdgeInsets.all(7.0),
                              child: Image.asset(
                                  "assets/images/image 2.jpg",
                                fit: BoxFit.cover,
                                width: 500,
                              ),
                            )
                        ),
                        Expanded(
                            child: Container(
                              color: Colors.blue,
                              margin: EdgeInsets.all(5.0),
                              padding: EdgeInsets.all(7.0),
                              child: Image.asset(
                                  "assets/images/image 2.jpg",
                                fit: BoxFit.cover,
                                width: 500,
                              ),
                            )
                        ),
                      ],
                    ),
                    flex: 1,
                  ),
                ],
              ),
            flex: 3,
          ),
        ],
      ),
    );
  }
}