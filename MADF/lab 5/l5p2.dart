import 'dart:io';

void main(List<String> args) {
  Bank_Account()
    ..GetAccountDetails()
    ..DisplayAccountDetails();
}

class Bank_Account {
  int? Account_no;
  String? User_Name, Email, Account_Type;
  double? Account_Balance;

  void GetAccountDetails() {
    stdout.write('Enter Account no : ');
    Account_no = int.parse(stdin.readLineSync()!);

    stdout.write('Enter User Name : ');
    User_Name = stdin.readLineSync()!;

    stdout.write('Enter Email of user : ');
    Email = stdin.readLineSync()!;

    stdout.write('Enter type of account : ');
    Account_Type = stdin.readLineSync()!;

    stdout.write('Enter Account balance : ');
    Account_Balance = double.parse(stdin.readLineSync()!);
  }

  void DisplayAccountDetails() {
    print('Acc. no : $Account_no');
    print('User name : $User_Name');
    print('Email : $Email');
    print('Account type : $Account_Type');
    print('Account balance : $Account_Balance');
  }
}
