import 'dart:io';

void main(List<String> args) {
  print('Enter number : ');
  int num = int.parse(stdin.readLineSync()!);

  if(num > 0){
    print('Number is positive');
  }
  else{
    print('Number is negative');
  }
}