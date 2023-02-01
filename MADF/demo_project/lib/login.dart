import 'package:demo_project/user_list_page.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var userNameController = TextEditingController();
  var passWordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isRememberMe = false;

  @override
  void initState() {
    super.initState();
    userNameController.text = 'd.a.kanzariya';
    passWordController.text = 'dipesh17';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Card(
                        elevation: 20,
                        child: Form(
                          key: formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Enter User Name : ",
                                  style:
                                      TextStyle(fontFamily: "f6", fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  controller: userNameController,
                                  onChanged: (value) {
                                    print(value);
                                  },
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "Enter Name"),
                                  validator: (value) {
                                    if (value != null && value.isEmpty) {
                                      return "Enter User Name";
                                    }
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Enter Password : ",
                                  style:
                                      TextStyle(fontSize: 20, fontFamily: "f6"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  controller: passWordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "Enter Password"),
                                  validator: (value) {
                                    if (value != null && value.isEmpty) {
                                      return "Enter Password";
                                    }
                                    if (value!.length < 8) {
                                      return "Enter valid Password";
                                    }
                                  },
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isRememberMe = !isRememberMe;
                                  });
                                },
                                child: Row(
                                  children: [
                                    Checkbox(
                                        value: isRememberMe,
                                        onChanged: (value) {}),
                                    Text("Remember me"),
                                  ],
                                ),
                              ),
                              Center(
                                child: Container(
                                  color: Colors.blue,
                                  margin: EdgeInsets.all(15),
                                  child: TextButton(
                                      onPressed: () {
                                        print(
                                            "User Name : ${userNameController.text.toString()}");
                                        print(
                                            "Password : ${passWordController.text.toString()}");
                                        if (formKey.currentState!.validate()) {
                                          if (isRememberMe) {
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(
                                              builder: (context) {
                                                return UserListPage();
                                              },
                                            ));
                                          }
                                        }
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Login",
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
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
