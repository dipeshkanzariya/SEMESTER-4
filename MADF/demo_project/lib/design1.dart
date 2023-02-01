import 'package:flutter/material.dart';

class Design1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
                color: Colors.red,
              ),
            flex: 1,
          ),
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        color: Colors.pink,
                      ),
                    flex: 2,
                  ),
                  Expanded(
                      child: Column(
                        children: [
                          Expanded(
                              child: Container(
                                color: Colors.orange,
                              ),
                            flex: 3,
                          ),
                          Expanded(
                              child: Container(
                                color: Colors.green,
                              ),
                            flex: 2,
                          ),
                        ],
                      ),
                  ),
                ],
              ),
            flex: 3,
          ),
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        color: Colors.grey,
                      ),
                  ),
                  Expanded(
                      child: Container(
                        color: Colors.black,
                      ),
                  ),
                  Expanded(
                      child: Container(
                        color: Colors.white,
                      ),
                  ),
                ],
              ),
            flex: 2,
          ),
        ],
      ),
    );
  }
}