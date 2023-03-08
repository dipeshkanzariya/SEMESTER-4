import 'package:database_demo/Model/city_model.dart';
import 'package:database_demo/Model/user_model.dart';
import 'package:database_demo/database/database.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class NewUser extends StatefulWidget {
  UserModel? model;

  NewUser({required this.model});

  @override
  State<NewUser> createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
  CityModel model = CityModel(CityID1: -1, CityName1: 'Select City');
  var nameController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isGetCity = true;

  @override
  void initState() {
    super.initState();
    nameController.text =
        widget.model != null ? widget.model!.Name.toString() : '';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Add New User"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: FutureBuilder<List<CityModel>>(
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      if (isGetCity) {
                        model = snapshot.data![0];
                      }
                      return DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          // hint: Row(
                          //   children: const [
                          //     Icon(
                          //       Icons.list,
                          //       size: 16,
                          //       color: Colors.yellow,
                          //     ),
                          //     SizedBox(
                          //       width: 4,
                          //     ),
                          //     Expanded(
                          //       child: Text(
                          //         'Select Item',
                          //         style: TextStyle(
                          //           fontSize: 14,
                          //           fontWeight: FontWeight.bold,
                          //           color: Colors.yellow,
                          //         ),
                          //         overflow: TextOverflow.ellipsis,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          items: snapshot.data!
                              .map((item) => DropdownMenuItem<CityModel>(
                                    value: item,
                                    child: Text(
                                      item.CityName.toString(),
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ))
                              .toList(),
                          value: model,
                          onChanged: (value) {
                            setState(() {
                              isGetCity = false;
                              model = value!;
                            });
                          },
                          buttonStyleData: ButtonStyleData(
                            height: 50,
                            width: 160,
                            padding: const EdgeInsets.only(left: 14, right: 14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                color: Colors.black26,
                              ),
                              color: Colors.grey,
                            ),
                            elevation: 2,
                          ),
                          iconStyleData: const IconStyleData(
                            icon: Icon(
                              Icons.arrow_drop_down,
                            ),
                            // iconSize: 14,
                            // iconEnabledColor: Colors.yellow,
                            // iconDisabledColor: Colors.grey,
                          ),
                          dropdownStyleData: DropdownStyleData(
                            maxHeight: 200,
                            width: double.infinity,
                            padding: null,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.redAccent,
                            ),
                            elevation: 8,
                            offset: const Offset(-20, 0),
                            scrollbarTheme: ScrollbarThemeData(
                              radius: const Radius.circular(40),
                              thickness: MaterialStateProperty.all<double>(6),
                              thumbVisibility:
                                  MaterialStateProperty.all<bool>(true),
                            ),
                          ),
                          menuItemStyleData: const MenuItemStyleData(
                            height: 40,
                            padding: EdgeInsets.only(left: 14, right: 14),
                          ),
                        ),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                  future:
                      isGetCity ? MyDatabase().getDataFromCityTable() : null,
                ),
              ),
              CreateFormFields(
                  "Name", "abc def", "Please Enter Name", nameController),
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
                          if (model.CityID == -1) {
                            showAboutDialog(context: context);
                          } else {
                            MyDatabase()
                                .insertOrUpdateInTable(
                              name: nameController.text,
                              cityId: model.CityID,
                              userId: widget.model != null
                                  ? widget.model!.UserID
                                  : -1,
                            )
                                .then(
                              (value) {
                                Navigator.of(context).pop(true);
                              },
                            );
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
    ));
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

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        dispose();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Alert"),
      content: Text("Plz Select City"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
