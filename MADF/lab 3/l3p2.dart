import 'dart:io';

void main(List<String> args) {
  int n,fact=1;
  print('Enter the number : ');
  n = int.parse(stdin.readLineSync()!);

  while(n > 0){
      fact = fact * n;
      n--;
  }
  print('Factorial : $fact');
}