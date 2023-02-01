import 'package:flutter/material.dart';

class Design2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
                color: Colors.red,
              )
          ),
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        color: Colors.amber,
                      )
                  ),
                  Expanded(
                      child: Row(
                        children: [
                          Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                        color: Colors.greenAccent,
                                      )
                                  ),
                                  Expanded(
                                      child: Container(
                                        color: Colors.green,
                                      )
                                  ),
                                ],
                              ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                    child: Container(
                                      color: Colors.pink,
                                    )
                                ),
                                Expanded(
                                    child: Container(
                                      color: Colors.black,
                                    )
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                  ),
                  Expanded(
                      child: Container(
                        color: Colors.white,
                      )
                  ),

                ],
              ),
          ),
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        color: Colors.red,
                      )
                  ),
                  Expanded(
                      child: Container(
                        color: Colors.blue,
                      )
                  ),
                  Expanded(
                      child: Container(
                        color: Colors.grey
                        ,
                      )
                  ),
                  Expanded(
                      child: Container(
                        color: Colors.green,
                      )
                  ),
                ],
              ),
          ),
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Row(
                        children: [
                          Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                        color: Colors.brown,
                                      )
                                  ),
                                  Expanded(
                                      child: Container(
                                        color: Colors.redAccent,
                                      )
                                  ),
                                ],
                              ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                    child: Column(
                                      children: [
                                        Expanded(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    child: Container(
                                                      color: Color.fromRGBO(155, 150, 222, 1),
                                                    )
                                                ),
                                                Expanded(
                                                    child: Container(
                                                      color: Color.fromRGBO(200, 200, 155, 1),
                                                    )
                                                ),
                                              ],
                                            ),
                                        ),
                                        Expanded(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    child: Container(
                                                      color: Color.fromRGBO(200, 200, 155, 1),
                                                    )
                                                ),
                                                Expanded(
                                                    child: Container(
                                                      color: Color.fromRGBO(155, 150, 222, 1),
                                                    )
                                                ),
                                              ],
                                            ),
                                        ),
                                      ],
                                    ),
                                ),
                                Expanded(
                                    child: Container(
                                      color: Colors.green,
                                    )
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                  ),
                  Expanded(
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                                color: Colors.purpleAccent,
                              )
                          ),
                          Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Column(
                                        children: [
                                          Expanded(
                                              child: Container(
                                                color: Color.fromRGBO(100, 255, 255, 1),
                                              )
                                          ),
                                          Expanded(
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                          child: Container(
                                                            color: Color.fromRGBO(155, 150, 222, 1),
                                                          )
                                                      ),
                                                      Expanded(
                                                          child: Container(
                                                            color: Color.fromRGBO(200, 200, 155, 1),
                                                          )
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                          child: Container(
                                                            color: Color.fromRGBO(200, 200, 155, 1),
                                                          )
                                                      ),
                                                      Expanded(
                                                          child: Container(
                                                            color: Color.fromRGBO(155, 150, 222, 1),
                                                          )
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      child: Container(
                                                        color: Color.fromRGBO(0, 0, 0, 1),
                                                      )
                                                  ),
                                                  Expanded(
                                                      child: Container(
                                                        color: Color.fromRGBO(255, 255, 255, 1),
                                                      )
                                                  ),
                                                ],
                                              ),
                                          ),
                                        ],
                                      ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Expanded(
                                            child: Container(
                                              color: Color.fromRGBO(0, 0, 255, 1),
                                            ),
                                          flex: 1,
                                        ),
                                        Expanded(
                                            child: Container(
                                              color: Color.fromRGBO(255, 0, 0, 1),
                                            ),
                                          flex: 2,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                          ),
                        ],
                      ),
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}