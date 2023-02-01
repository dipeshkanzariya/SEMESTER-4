import 'package:demo_project/lab9p3.dart';
import 'package:flutter/material.dart';

class DynamicBirthdayCard extends StatefulWidget {
  @override
  State<DynamicBirthdayCard> createState() => _DynamicBirthdayCardState();
}

class _DynamicBirthdayCardState extends State<DynamicBirthdayCard> {
  var nameController = TextEditingController();
  var dateController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Dynamic Birthday Card",
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image(
                  image: NetworkImage(
                      "https://thumbs.dreamstime.com/b/happy-birthday-card-background-decoration-border-snowflakes-glitter-happy-birthday-card-background-decoration-border-snowflakes-166048775.jpg"),
                  fit: BoxFit.cover,
                ),
                Container(
                  color: Color(0x80ffffAA),
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CreateTextFormField(
                          "Name", "abc efg", nameController, "Enter Name"),
                      CreateTextFormField("Birthdate", "dd/mm/yyyy",
                          dateController, "Enter birthdate"),
                      Center(
                        child: Container(
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.only(right: 30, left: 30),
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: TextButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) {
                                      return BirthdayCard(
                                          name: nameController.text,
                                          date: dateController.text);
                                    },
                                  ));
                                }
                              },
                              child: Text(
                                "Create birthday card",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget CreateTextFormField(
      LableName, HintText, controllerName, validationText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Enter ${LableName} :",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "f8",
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: controllerName,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange, width: 3),
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange, width: 3),
                borderRadius: BorderRadius.circular(10),
              ),
              labelText: LableName,
              hintText: HintText,
              hintStyle: TextStyle(color: Colors.orange),
              labelStyle: TextStyle(color: Colors.orange),

            ),
            validator: (value) {
              if (value != null && value.isEmpty) {
                return validationText;
              }
            },
          ),
        ),
      ],
    );
  }
}
