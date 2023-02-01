import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UMS extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Darshan Uni - Rajkot'),backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                child: Text('Name : Kanzariya Dipesh A.',style: TextStyle(
                  fontSize: 30,
                ),),
                color: Colors.white,
              ),
            flex: 2,
          ),
          Expanded(
              child: Container(
                color: Colors.blue,
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
                          child: Container(
                            color: Colors.red,
                          ),
                          flex: 2,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.green,
                          ),
                          flex: 2,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.lightBlue,
                          ),
                          flex: 2,
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.grey,
                          ),
                          flex: 2,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.lightBlue,
                          ),
                          flex: 2,
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

                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.black,
                          ),
                          flex: 2,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.yellow,
                          ),
                          flex: 2,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.orange,
                          ),
                          flex: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            flex: 9,
          ),
        ],
      ),
    );
  }
}