import 'dart:io';
void main(List<String> args) {
  int? a,b;
  print('Enter a : ');
  a = int.parse(stdin.readLineSync()!);
  print('Enter b : ');
  b = int.parse(stdin.readLineSync()!);
  print('Sum = ${a+b}');
}