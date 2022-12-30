import 'dart:io';

void main(List<String> args) {
  List list = ["Delhi", "Mumbai", "Bangalore", "Hyderabad", "Ahmedabad"];
  print(list);

  print("Enter Exisiting Value : ");
  var selected = stdin.readLineSync();

  print("Enter Replacable Value : ");
  var newValue = stdin.readLineSync();

  var index = list.indexOf(selected);
  list.replaceRange(index, index + 1, [newValue]);

  print(list);
}
