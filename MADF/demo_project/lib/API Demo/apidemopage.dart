import 'dart:collection';
import 'dart:convert';
import 'package:demo_project/API%20Demo/add_faculty_page.dart';
import 'package:demo_project/Model/Faculty%20list%20Model/FacultyModel.dart';
import 'package:logger/logger.dart';
import 'package:dio/dio.dart';
import 'package:demo_project/Retro Api Demo/rest_client.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiDemoPage extends StatefulWidget {
  // FacultyListModel facultyDetails;
  // ApiDemoPage({super.key,required this.facultyDetails});

  @override
  State<ApiDemoPage> createState() => _ApiDemoPageState();
}

class _ApiDemoPageState extends State<ApiDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Demo"),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return AddFaculty(data: null);
                  },
                ),
              ).then(
                (value) {
                  if (value) {
                    setState(() {});
                  }
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
      body: FutureBuilder<FacultyListModel>(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.resultList!.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Card(
                    child: ListTile(
                      minLeadingWidth: 0,
                      contentPadding: EdgeInsets.all(6),
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          snapshot.data!.resultList![index].facultyImage
                              .toString(),
                        ),
                      ),
                      title: Text(
                        snapshot.data!.resultList![index].facultyName
                            .toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        snapshot.data!.resultList![index].facultyDepartment
                            .toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          deleteAlertDialogBox(
                              snapshot.data!.resultList![index].id);
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
        future: getFaculty(),
      ),
    );
  }

  Future<dynamic> callFacultyApi() async {
    http.Response res = await http.get(
        Uri.parse("https://630c3f8e83986f74a7bbcf32.mockapi.io/faculties"));
    dynamic res2 = jsonDecode(res.body.toString());
    print("Data : ${res2}");
    return res2;
  }

  Future<FacultyListModel> getFaculty() async {
    final dio = Dio(); // Provide a dio instance
    final client = RestClient(dio);
    FacultyListModel data =
        FacultyListModel.fromJson(jsonDecode(await client.getFaculty()));
    print("data : ${data.resultList!.length}");
    return data;
  }

  Future<void> deleteAlertDialogBox(id) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: const [
              Icon(
                Icons.delete_rounded,
                color: Colors.red,
              ),
              Text(
                'Alert',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          content: const Text("Are you sure want to delete."),
          actions: [
            //region Confirm Delete
            TextButton(
              child: const Text(
                'Yes',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onPressed: () {
                deleteFacultyFromApi(id).then((value) {
                  Navigator.of(context).pop();
                  setState(() {});
                });
              },
            ),
            //endregion

            //region Not Delete
            TextButton(
              child: const Text(
                'No',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            //endregion
          ],
        );
      },
    );
  }

  Future<void> deleteFacultyFromApi(id) async {
    final dio = Dio(); // Provide a dio instance
    final client = RestClient(dio);
    await client.deleteFaculty(id);
  }
}
