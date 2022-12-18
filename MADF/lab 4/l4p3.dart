import 'dart:io';

void main(List<String> args) {
  print('Enter n : ');
  int n = int.parse(stdin.readLineSync()!);

  fibo(n: n);
}

void fibo({int? n}){
  int a = 0;
  int b = 1;
  int sum = 0;

  for(int i = 0 ; i < n! ; i++){
    print(a);

    sum = a+b;
    a = b;
    b = sum;
  }
}