import 'dart:io';

void main(List<String> args) {
  int? a,b,c;
  
  print('Enter a : ');
  a = int.parse(stdin.readLineSync()!);

  print('Enter b : ');
  b = int.parse(stdin.readLineSync()!);

  print('Enter c : ');
  c = int.parse(stdin.readLineSync()!);

  if(a > b){
    if(a > c){
      print('a is largest');
    }
    else{
      print('c is largest');
    }
  }
  else{
    if(b > c){
      print('b is largest');
    }
    else{
      print('c is largest');
    }
  }
}
