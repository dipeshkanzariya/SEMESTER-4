import 'dart:io';

void main(List<String> args) {
  double? pound,kg,inch,meter,bmi;
  print('Enter weight in pound : ');
  pound = double.parse(stdin.readLineSync()!);
  kg = pound / 0.45359237;

  print('Enter height in inch : ');
  inch = double.parse(stdin.readLineSync()!);
  meter = inch / 0.0254;

  bmi = kg / (meter * meter);

  print('BMI is : $bmi');
}