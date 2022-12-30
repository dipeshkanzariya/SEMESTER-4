import 'dart:io';

void main(List<String> args) {
  Candidate()
    ..GetCandidateDetails()
    ..DisplayCandidateDetails();
}

class Candidate {
  int? Candidate_Id, Candidate_Age;
  String? Candidate_Name;
  double? Candicate_Weight, Candidate_height;

  void GetCandidateDetails() {
    stdout.write('Enter candidate id : ');
    Candidate_Id = int.parse(stdin.readLineSync()!);

    stdout.write('Enter candidate name : ');
    Candidate_Name = stdin.readLineSync()!;

    stdout.write('Enter candidate age : ');
    Candidate_Age = int.parse(stdin.readLineSync()!);

    stdout.write('Enter candidate weight : ');
    Candicate_Weight = double.parse(stdin.readLineSync()!);

    stdout.write('Enter candidate height : ');
    Candidate_height = double.parse(stdin.readLineSync()!);
  }

  void DisplayCandidateDetails() {
    print('Candidate ID : $Candidate_Id');
    print('Candidate Name : $Candidate_Name');
    print('Candidate Age : $Candidate_Age');
    print('Candidate Weight : $Candicate_Weight');
    print('Candidate Height : $Candidate_height');
  }
}
