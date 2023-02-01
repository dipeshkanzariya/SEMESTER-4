import 'package:demo_project/user_list_page.dart';
import 'package:flutter/material.dart';

class AddUserPage extends StatefulWidget {
  var name, password, age, mobile, email, image;

  AddUserPage(
      {super.key,
      required this.name,
      required this.password,
      required this.age,
      required this.mobile,
      required this.email,
      required this.image});

  @override
  State<AddUserPage> createState() => _AddUserPageState();
}

class _AddUserPageState extends State<AddUserPage> {
  var nameController = TextEditingController();
  var passwordControlller = TextEditingController();
  var ageController = TextEditingController();
  var mobileController = TextEditingController();
  var emailController = TextEditingController();
  var imageController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isConfirm = false;

  @override
  void initState() {
    super.initState();
    nameController.text = widget.name ?? "";
    passwordControlller.text = widget.password ?? "";
    ageController.text = widget.age ?? "";
    mobileController.text = widget.mobile ?? "";
    emailController.text = widget.email ?? "";
    imageController.text = widget.image ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add User"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              CreateFormFields(
                  "Name", "abc def", "Please Enter Name", nameController),
              CreateFormFields("Password", "abc@123", "Please Enter Password",
                  passwordControlller),
              CreateFormFields("Age", "12", "Please Enter Age", ageController),
              CreateFormFields("Mobile No.", "1234567890",
                  "Please Enter Mobile No.", mobileController),
              CreateFormFields("Email Address", "abc@gmail.com",
                  "Please Enter Email", emailController),
              CreateFormFields("Image", "Image link",
                  "Please Enter Image", imageController),
              Row(
                children: [
                  Checkbox(
                      value: isConfirm,
                      onChanged: (value) {
                        setState(() {
                          isConfirm = !isConfirm;
                        });
                      }),
                  Text(
                    "I have read term and conditions.",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
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
                          if (isConfirm) {
                            Map<String, dynamic> map = {};
                            map['Name'] = nameController.text;
                            map['Password'] = passwordControlller.text;
                            map['Age'] = ageController.text;
                            map['Mo. no.'] = mobileController.text;
                            map['Email'] = emailController.text;
                            map['Image'] = imageController.text;
                            Navigator.of(context).pop(map);
                          }
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
}
