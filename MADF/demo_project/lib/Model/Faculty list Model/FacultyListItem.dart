import 'dart:convert';

/// createdAt : "2022-09-09T01:29:59.198Z"
/// FacultyName : "Dr. Gopi Sanghani"
/// FacultyImage : "https://darshan.ac.in/U01/Faculty-Photo/5---21-06-2021-10-50-15.jpg"
/// FacultyDepartment : "CE"
/// Experience : "22+ years"
/// Specialization : "Artificial Intelligence"
/// Subjects : "C, Operating Systems, Design & Analysis of Algorithms, System Programming, Distributed Operating System, Artificial Intelligence, Machine Learning"
/// id : "1"

FacultyListItem facultyListModelFromJson(String str) =>
    FacultyListItem.fromJson(json.decode(str));

String facultyListModelToJson(FacultyListItem data) =>
    json.encode(data.toJson());

class FacultyListItem {
  FacultyListItem({
    String? createdAt,
    String? facultyName,
    String? facultyImage,
    String? facultyDepartment,
    String? experience,
    String? specialization,
    String? subjects,
    String? id,
  }) {
    _createdAt = createdAt;
    _facultyName = facultyName;
    _facultyImage = facultyImage;
    _facultyDepartment = facultyDepartment;
    _experience = experience;
    _specialization = specialization;
    _subjects = subjects;
    _id = id;
  }

  FacultyListItem.fromJson(dynamic json) {
    _createdAt = json['createdAt'];
    _facultyName = json['FacultyName'];
    _facultyImage = json['FacultyImage'];
    _facultyDepartment = json['FacultyDepartment'];
    _experience = json['Experience'];
    _specialization = json['Specialization'];
    _subjects = json['Subjects'];
    _id = json['id'];
  }

  String? _createdAt;
  String? _facultyName;
  String? _facultyImage;
  String? _facultyDepartment;
  String? _experience;
  String? _specialization;
  String? _subjects;
  String? _id;

  FacultyListItem copyWith({
    String? createdAt,
    String? facultyName,
    String? facultyImage,
    String? facultyDepartment,
    String? experience,
    String? specialization,
    String? subjects,
    String? id,
  }) =>
      FacultyListItem(
        createdAt: createdAt ?? _createdAt,
        facultyName: facultyName ?? _facultyName,
        facultyImage: facultyImage ?? _facultyImage,
        facultyDepartment: facultyDepartment ?? _facultyDepartment,
        experience: experience ?? _experience,
        specialization: specialization ?? _specialization,
        subjects: subjects ?? _subjects,
        id: id ?? _id,
      );

  String? get createdAt => _createdAt;

  String? get facultyName => _facultyName;

  String? get facultyImage => _facultyImage;

  String? get facultyDepartment => _facultyDepartment;

  String? get experience => _experience;

  String? get specialization => _specialization;

  String? get subjects => _subjects;

  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['createdAt'] = _createdAt;
    map['FacultyName'] = _facultyName;
    map['FacultyImage'] = _facultyImage;
    map['FacultyDepartment'] = _facultyDepartment;
    map['Experience'] = _experience;
    map['Specialization'] = _specialization;
    map['Subjects'] = _subjects;
    map['id'] = _id;
    return map;
  }
}
