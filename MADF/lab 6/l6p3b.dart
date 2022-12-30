import 'dart:io';

void main(List<String> args) {
  PhoneBook()..createContact();
}

class PhoneBook {
  List<Map<String, dynamic>> phone_book = [];

  void createContact() {
    while (true) {
      stdout.write("Enter your choice:\n1.Create a contact\n2.Info\n3.Exit");
      int choice = int.parse(stdin.readLineSync()!);
      if (choice == 1) {
        Map<String, dynamic> map = {};

        stdout.write("Enter NAME:");
        map['Name'] = stdin.readLineSync()!;
        stdout.write("MobileNo:");
        map['mobileno'] = stdin.readLineSync()!;
        phone_book.add(map);
      } else if (choice == 2) {
        info();
      } else if (choice == 3) {
        break;
      } else {
        print("Enter Valid Choice 1,2 or 3");
      }
    }
  }

  void info() {
    for (int i = 0; i < phone_book.length; i++) {
      print(
          "Name:${phone_book[i]['Name']}\nMobile No:${phone_book[i]['mobileno']}");
    }
  }
}
