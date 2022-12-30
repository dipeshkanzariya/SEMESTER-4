import 'dart:io';

void main(List<String> args) {
  List list = [];

  for (var i = 1; i <= 5; i++) {
    print("Enter [$i] Element : ");
    int element = int.parse(stdin.readLineSync()!);

    list.add(element);
    list.sort();
  }

  print("$list");
}
