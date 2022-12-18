import 'dart:io';

void main(List<String> args) {
  double? s1,s2,s3,s4,s5,p;
  print('Enter subject 1 : ');
  s1 = double.parse(stdin.readLineSync()!);
  print('Enter subject 2 : ');
  s2 = double.parse(stdin.readLineSync()!);
  print('Enter subject 3 : ');
  s3 = double.parse(stdin.readLineSync()!);
  print('Enter subject 4 : ');
  s4 = double.parse(stdin.readLineSync()!);
  print('Enter subject 5 : ');
  s5 = double.parse(stdin.readLineSync()!);

  p = (s1+s2+s3+s4+s5)*100/500;

  print('Percentage = $p %');
}