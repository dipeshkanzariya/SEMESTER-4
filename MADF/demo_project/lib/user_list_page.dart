import 'package:demo_project/add_user_page.dart';
import 'package:flutter/material.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({Key? key}) : super(key: key);

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  List<Map> users = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of User'),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return AddUserPage(
                      name: null,
                      password: null,
                      age: null,
                      mobile: null,
                      email: null,
                      image: null);
                },
              )).then((value) {
                setState(() {
                  users.add(value);
                });
              });
            },
            child: Container(
                margin: EdgeInsets.only(right: 25), child: Icon(Icons.add)),
          ),
        ],
      ),
      body: users.length > 0
          ? ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return AddUserPage(
                          name: users[index]['Name'],
                          password: users[index]['Password'],
                          age: users[index]['Age'],
                          mobile: users[index]['Mo.  no.'],
                          email: users[index]['Email'],
                          image: users[index]['Image'],
                        );
                      },
                    )).then((value) {
                      setState(() {
                        users[index] = value;
                      });
                    });
                  },
                  child: Card(
                    child: Card(
                      child: Row(
                        children: [
                          Text(users[index]['Name']),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: users.length,
            )
          : Center(
              child: Text(
              "No data found",
              style: TextStyle(
                fontSize: 25,
                color: Colors.grey,
                fontFamily: "f8",
              ),
            )),
    );
  }
}
