import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Design3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                        color:  Color.fromRGBO(50, 200, 100, 1),
                      ),
                    flex: 4,
                  ),
                  Expanded(
                      child: Row(
                        children: [
                          Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                        color: Colors.purpleAccent,
                                      )
                                  ),
                                  Expanded(
                                      child: Container(
                                        color: Colors.grey,
                                      )
                                  ),
                                ],
                              ),
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
                                                  color: Colors.white,
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
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Expanded(
                                                child: Container(
                                                  color: Colors.black,
                                                )
                                            ),
                                            Expanded(
                                                child: Container(
                                                  color: Colors.white,
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
                                      color: Colors.purpleAccent,
                                    )
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    flex: 3,
                  ),
                ],
              ),
          ),
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        color:  Color.fromRGBO(100, 255, 255, 1),
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
                                    color: Colors.yellowAccent,
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
                                  child: Container(
                                    color: Colors.redAccent,
                                  )
                              ),
                              Expanded(
                                  child: Container(
                                    color: Colors.yellowAccent,
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
                        color:  Color.fromRGBO(100, 255, 255, 1),
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
                        color: Colors.redAccent,
                      )
                  ),
                  Expanded(
                      child: Container(
                        color:  Color.fromRGBO(100, 255, 255, 1),
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
              child: Row(
                children: [
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
                                            color: Colors.white,
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
                                Expanded(
                                  child: Column(
                                    children: [
                                      Expanded(
                                          child: Container(
                                            color: Colors.black,
                                          )
                                      ),
                                      Expanded(
                                          child: Container(
                                            color: Colors.white,
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
                                color: Color.fromRGBO(100, 255, 255, 1),
                              )
                          ),
                        ],
                      ),
                    flex: 2,
                  ),
                  Expanded(
                      child: Container(
                        color:  Colors.yellowAccent,
                      ),
                    flex: 2,
                  ),
                  Expanded(
                      child: Container(
                        color:  Colors.black,
                      ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                  child: Container(
                                    color: Colors.yellowAccent,
                                  ),
                                flex: 1,
                              ),
                              Expanded(
                                  child: Container(
                                    color: Colors.redAccent,
                                  ),
                                flex: 3,
                              ),
                            ],
                          ),
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
                                                color: Colors.white,
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
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Expanded(
                                              child: Container(
                                                color: Colors.black,
                                              )
                                          ),
                                          Expanded(
                                              child: Container(
                                                color: Colors.white,
                                              )
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                flex: 1,
                              ),
                              Expanded(
                                  child: Container(
                                    color: Colors.yellowAccent,
                                  ),
                                flex: 3,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    flex: 3,
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}