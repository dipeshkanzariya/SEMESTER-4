import 'dart:collection';
import 'dart:convert';
import 'package:demo_project/Model/Faculty%20list%20Model/FacultyModel.dart';
import 'package:logger/logger.dart';
import 'package:dio/dio.dart';
import 'package:demo_project/Retro Api Demo/rest_client.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiDemoPage extends StatefulWidget {
  @override
  State<ApiDemoPage> createState() => _ApiDemoPageState();
}

class _ApiDemoPageState extends State<ApiDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Demo"),
      ),
      body: FutureBuilder<FacultyListModel>(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.resultList!.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Text(snapshot.data!.resultList![index].facultyName.toString()),
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
    FacultyListModel data = FacultyListModel.fromJson(jsonDecode(await client.getFaculty()));
    print("data : ${data.resultList!.length}");
    return data;
  }
}
