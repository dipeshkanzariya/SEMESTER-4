import 'dart:io';

void main(List<String> args) {
  int? a,b,c;
  
  print('Enter a : ');
  a = int.parse(stdin.readLineSync()!);

  print('Enter b : ');
  b = int.parse(stdin.readLineSync()!);

  print('Enter c : ');
  c = int.parse(stdin.readLineSync()!);

  (a > b) 
  ? ((a > c) ? (print('a is largest')) : (print('c is largest'))) 
  : ((b > c) ? (print('b is largest')) : (print('c is largest')));
}