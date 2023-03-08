import 'package:database_demo/Model/user_model.dart';
import 'package:database_demo/database/database.dart';
import 'package:database_demo/database/new_user.dart';
import 'package:flutter/material.dart';

class UserListPage extends StatefulWidget {
  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  @override
  void initState() {
    super.initState();
    MyDatabase().copyPasteAssetFileToRoot().then(
      (value) {
        MyDatabase().getDataFromUserTable();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("User List"),
        actions: [
          InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return NewUser(model: null,);
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
                child: Icon(Icons.add),
              )),
        ],
      ),
      body: FutureBuilder<List<UserModel>>(
        builder: (context, snapshot) {
          if (snapshot.data != null && snapshot.hasData) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return NewUser(model: snapshot.data![index]);
                      },
                    )).then(
                      (value) {
                        if (value) {
                          setState(() {});
                        }
                      },
                    );
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/nobita.jfif"),
                    ),
                    title: Text(snapshot.data![index].Name),
                    trailing: InkWell(
                      onTap: () {
                        MyDatabase()
                            .deleteUserFromTable(snapshot.data![index].UserID)
                            .then(
                          (value) {
                            setState(() {});
                          },
                        );
                      },
                      child: Icon(Icons.delete),
                    ),
                  ),
                );
              },
              itemCount: snapshot.data!.length,
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
        future: MyDatabase().getDataFromUserTable(),
      ),
    ));
  }
}
