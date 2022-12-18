import 'dart:io';

void main(List<String> args) {
  print('enter p : ');
  double p = double.parse(stdin.readLineSync()!);

  print('enter r : ');
  double r = double.parse(stdin.readLineSync()!);

  print('enter n : ');
  double n = double.parse(stdin.readLineSync()!); 

  interest(p, r, n);
}

void interest(double p, double r, double n){
   print('Interest = ${(p * r * n) / 100 }');
}