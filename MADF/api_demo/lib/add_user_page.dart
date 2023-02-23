import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddNewUser extends StatefulWidget {
  dynamic? map;
  AddNewUser(this.map);

  @override
  State<AddNewUser> createState() => _AddNewUserState();
}

class _AddNewUserState extends State<AddNewUser> {
  var nameController = TextEditingController();
  var cityController = TextEditingController();
  var numController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    nameController.text = widget.map == null ? '' : widget.map!['UserName'];
    cityController.text = widget.map == null ? '' : widget.map!['City'];
    numController.text = widget.map == null ? '' : widget.map!['Number'];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add User"),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                CreateFormFields(
                    "Name", "abcd efgh", "Please Enter Name", nameController),
                CreateFormFields("City", "Ahmedabad, Rajkot, etc",
                    "Please Enter City", cityController),
                CreateFormFields(
                    "Number", "123456789", "Please Enter Number", numController),
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
                            if(widget.map == null){
                              addUserIntoApi().then((value) {
                                Navigator.of(context).pop(true);
                              },);
                            }
                            else{
                              updateUserInApi(widget.map!['id']).then((value) {
                                Navigator.of(context).pop(true);
                              },);
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

  Future<void> addUserIntoApi() async {
    Map map = {};
    map['UserName'] = nameController.text;
    map['City'] = cityController.text;
    map['Number'] = numController.text;
    http.Response res = await http.post(
        Uri.parse('https://63f6329459c944921f6f33d7.mockapi.io/User'),
        body: map);
  }

  Future<void> updateUserInApi(dynamic id) async {
    Map map = {};
    map['UserName'] = nameController.text;
    map['City'] = cityController.text;
    map['Number'] = numController.text;
    http.Response res = await http.put(
        Uri.parse('https://63f6329459c944921f6f33d7.mockapi.io/User/$id'),
        body: map);
  }
}
