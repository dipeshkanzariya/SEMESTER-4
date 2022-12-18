import 'dart:io';

void main(List<String> args) {
  double? c,f;
  print('Enter temperature in feranhit : ');
  f = double.parse(stdin.readLineSync()!);
  c = ((f-32)*5)/9;
  print('Temperature in celcius : $c');
}