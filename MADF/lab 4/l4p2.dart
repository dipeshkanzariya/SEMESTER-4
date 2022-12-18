import 'dart:io';

void main(List<String> args) {
  print('Enter first number : ');
  int a = int.parse(stdin.readLineSync()!);

  print('Enter second number : ');
  int b = int.parse(stdin.readLineSync()!);

  maximum maxNum = maximum(a,b);
  maxNum.max(a,b);
}

class maximum{
  var x;
  var y;

  maximum(int x,int y){
    this.x = x;
    this.y = y;
  }

  void max(int x,int y){
    if(x > y){
      print('$x is largest');
    }
    else{
      print('$y is largest');
    }
  }
}