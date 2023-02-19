import 'package:demo_project/Model/Faculty%20list%20Model/FacultyListItem.dart';

class FacultyListModel{
  List<FacultyListItem>? _resultList;

  FacultyListModel ({List<FacultyListItem>? resultList}) {
    _resultList = resultList;
  }

  List<FacultyListItem>? get resultList => _resultList;

  FacultyListModel.fromJson(dynamic json) {
    if (json != null) {
      _resultList = [];
      json.forEach((v) {
        _resultList?.add(FacultyListItem.fromJson(v));
      });
    }
  }

}