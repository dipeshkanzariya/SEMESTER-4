import 'dart:io';
import 'package:database_demo/Model/city_model.dart';
import 'package:database_demo/Model/user_model.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDatabase {
  Future<Database> initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = join(appDocDir.path, 'demo.db');
    return await openDatabase(
      databasePath,
      version: 2,
    );
  }

  Future<void> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "demo.db");

    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      ByteData data =
          await rootBundle.load(join('assets/database/', 'demo.db'));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await new File(path).writeAsBytes(bytes);
    }
  }

  Future<List<UserModel>> getDataFromUserTable() async {
    List<UserModel> userList = [];
    Database db = await initDatabase();
    List<Map<String, Object?>> data =
        await db.rawQuery('SELECT * FROM Tbl_User');
    for (int i = 0; i < data.length; i++) {
      UserModel model = UserModel();
      model.UserID = data[i]['UserID'] as int;
      model.Name = data[i]['Name'].toString();
      model.CityID = data[i]['CityID'] as int;
      userList.add(model);
    }
    print("data :: ${data.length}");
    return userList;
  }

  Future<List<CityModel>> getDataFromCityTable() async {
    List<CityModel> cityList = [];
    Database db = await initDatabase();
    List<Map<String, Object?>> data =
    await db.rawQuery('SELECT * FROM Tbl_City');
    CityModel model = CityModel(CityID1: -1,CityName1: 'Select City');
    cityList.add(model);
    for (int i = 0; i < data.length; i++) {
      CityModel model = CityModel(CityID1: data[i]['CityID'] as int,CityName1: data[i]['CityName'].toString());
      cityList.add(model);
    }
    print("data :: ${data.length}");
    return cityList;
  }

  Future<void> insertOrUpdateInTable({userId, name, cityId}) async {
    Database db = await initDatabase();
    Map<String, Object?> map = Map();
    map['Name'] = name;
    map['CityId'] = cityId;
    if (userId != -1) {
      await db.update('Tbl_User', map, where: 'UserID = ?', whereArgs: [userId]);
    } else {
      await db.insert('Tbl_User', map);
    }
  }

  Future<int> deleteUserFromTable(userId) async {
    Database db = await initDatabase();
    int deletedId = await db.delete('Tbl_User',where: 'UserID = ?', whereArgs: [userId]);
    return deletedId;
  }
}
