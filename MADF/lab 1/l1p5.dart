import 'dart:io';

void main(List<String> args) {
  double? meter,feet;
  print('Number in meter : ');
  meter = double.parse(stdin.readLineSync()!);;

  feet = meter * 3.28084;

  print('Result in feet : $feet');
}