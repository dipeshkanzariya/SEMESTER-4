import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  @override
  void initState() {
    super.initState();
    print("step : 1");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("step : 3");
  }

  @override
  void didUpdateWidget(covariant BottomNavigationBarPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("step : 4");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("step : 5");
  }

  @override
  void dispose() {
    super.dispose();
    print("step : 6");
  }

  int selectedIndex = 0;

  List<Widget> widgetList = [
    Center(
      child: Container(
        child: Text(
          "Bottom navigation Bar Item 1",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    Center(
      child: Container(
        child: Text(
          "Bottom navigation Bar Item 2",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    print("step : 2");
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),
      body: widgetList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'add',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'add',
            backgroundColor: Colors.blue,
          ),
        ],
        selectedItemColor: Colors.red,
        backgroundColor: Colors.blue,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          },);
        },
      ),
    );
  }
}
