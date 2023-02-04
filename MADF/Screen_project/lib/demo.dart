import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  var image,company,name;

  Demo({required this.image,required this.company,required this.name});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(widget.company),
          Text(widget.name),
          Image(image: AssetImage(widget.image))
        ],
      ),
    );
  }
}
