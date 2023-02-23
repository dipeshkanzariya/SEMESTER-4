import 'dart:convert';

import 'package:api_demo/add_user_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class ApiDemo extends StatefulWidget {
  @override
  State<ApiDemo> createState() => _ApiDemoState();
}

class _ApiDemoState extends State<ApiDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("ApiDemo"),
          actions: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return AddNewUser(null);
                  },
                )).then(
                  (value) {
                    if (value) {
                      setState(() {});
                    }
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Add User",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Icon(Icons.add)
                  ],
                ),
              ),
            ),
          ],
        ),
        body: FutureBuilder(
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 10,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    snapshot.data[index]['UserName'].toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    snapshot.data[index]['City'].toString(),
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    snapshot.data[index]['Number'].toString(),
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) {
                                        return AddNewUser(snapshot.data![index]);
                                      },
                                    )).then(
                                          (value) {
                                        if (value) {
                                          setState(() {});
                                        }
                                      },
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.arrow_forward),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    deleteAlertBox(snapshot.data![index]['id']);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.delete),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
          future: getUserFromApi(),
        ),
      ),
    );
  }

  Future<dynamic> deleteAlertBox(id) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Row(
            children: [
              Icon(
                Icons.delete_rounded,
                color: Colors.red,
              ),
              Text(
                "Alert",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          content: const Text("Are you sure want to delete."),
          actions: [
            TextButton(
              child: const Text(
                'Yes',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onPressed: () {
                deleteUserFromApi(id).then((value) {
                  Navigator.of(context).pop();
                  setState(() {});
                });
              },
            ),
            TextButton(
              child: const Text(
                'No',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  String convertDateFromString(dynamic dateToFormat){
    DateTime date = DateFormat("yyyy-MM-dd'T'hh:mm:ss.SSS'Z'").parse(dateToFormat);
    return  DateFormat("yyyy-MMM-dd").format(date);
  }

  Future<dynamic> getUserFromApi() async {
    http.Response res = await http
        .get(Uri.parse('https://63f6329459c944921f6f33d7.mockapi.io/User'));
    dynamic res2 = jsonDecode(res.body.toString());
    return res2;
  }

  Future<dynamic> deleteUserFromApi(String id) async {
    http.Response res = await http.delete(
        Uri.parse("https://63f6329459c944921f6f33d7.mockapi.io/User" + "/$id"));
  }
}
