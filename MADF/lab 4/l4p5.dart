import 'dart:io';

void main(List<String> args) {
  print('c: Circle \ns : Square \nt : Triangle');

  print('Enter choice : ');
  String ch = stdin.readLineSync()!;

  if(ch == 'c'){
    print('Enter redius : ');
    double r = double.parse(stdin.readLineSync()!);

    area(r);
  }

  else if(ch == 's'){
    print('Enter length : ');
    double l = double.parse(stdin.readLineSync()!);

    area(l,l); 
  }

  else if(ch == 't'){
    print('Enter height : ');
    double h = double.parse(stdin.readLineSync()!);

    print('Enter base : ');
    double b = double.parse(stdin.readLineSync()!);

    area(h,b);
  }
}

void area(var n1 , [var n2]){
  if(n2 == null){
    print('Area of Circle = ${3.14 * n1 * n1}');
  }
  else if(n1 != n2){
    print('Area of Triangle = ${0.5 * n1 * n2}');
  }
  else{
    print('Area of Square = ${n1 * n2}');
  }
}