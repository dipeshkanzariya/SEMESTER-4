import 'package:demo_project/Model/Faculty%20list%20Model/FacultyListItem.dart';
import 'package:demo_project/Retro%20Api%20Demo/rest_client.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class AddFaculty extends StatefulWidget {
  FacultyListItem? data;
  AddFaculty({super.key, required this.data});

  @override
  State<AddFaculty> createState() => _AddFacultyState();
}

class _AddFacultyState extends State<AddFaculty> {
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var imageController = TextEditingController();
  var deptController = TextEditingController();
  var expController = TextEditingController();
  var specializationController = TextEditingController();
  var subjectController = TextEditingController();

  @override
  // void initState() {
  //   super.initState();
  //   nameController.text = widget.data!.facultyName ?? "";
  //   imageController.text = widget.data!.facultyImage ?? "";
  //   deptController.text = widget.data!.facultyDepartment ?? "";
  //   expController.text = widget.data!.experience ?? "";
  //   specializationController.text = widget.data!.specialization ?? "";
  //   subjectController.text = widget.data!.subjects ?? "";
  // }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                CreateFormFields("Faculty Name", "abc def",
                    "Please Enter FacultyName", nameController),
                CreateFormFields("Image", "image link",
                    "Please Enter valid image link", imageController),
                CreateFormFields("Department", "abddcd",
                    "Please Enter Department", deptController),
                CreateFormFields("Experience", "1 2 3 etc",
                    "Please Enter Experience", expController),
                CreateFormFields("Specialization", "specialization",
                    "Please Enter specialization", specializationController),
                CreateFormFields("subjects", "subject", "Please Enter subject",
                    subjectController),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blue,
                    ),
                    margin: EdgeInsets.all(15),
                    child: TextButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            addFacultyIntoApi().then(
                              (value) => Navigator.of(context).pop(true),
                            );
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget CreateFormFields(Name, HintText, validationText, controllerName) {
    return Card(
      elevation: 10,
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Enter ${Name} : ",
              style: TextStyle(fontFamily: "f6", fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: controllerName,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter ${Name}",
                  hintText: HintText),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return validationText;
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> addFacultyIntoApi() async {
    final dio = Dio(); // Provide a dio instance
    final client = RestClient(dio);
    await client.AddFaculty(
      nameController.text,
      imageController.text,
      deptController.text,
      expController.text,
      specializationController.text,
      subjectController.text,
    );
  }
}
