import 'dart:io';

void main(List<String> args) {
  double? a,b;

  print('Enter first number : ');
  a = double.parse(stdin.readLineSync()!);

  print('Enter second number : ');
  b = double.parse(stdin.readLineSync()!);

  print('1 : Addition \n2 : Subtraction \n3 : Multiplication \n4 : Division');
  int ch = int.parse(stdin.readLineSync()!);

  // Using only if 

  // if(ch == 1){
  //   print('Add = ${a+b}');
  // }

  // if(ch ==2){
  //   print('Sub = ${a-b}');
  // }

  // if(ch == 3){
  //   print('Multi = ${a*b}');
  // }

  // if(ch == 4){
  //   print('Div = ${a/b}');
  // }

  // Using else if 

  // if(ch == 1){
  //   print('Add = ${a+b}');
  // }

  // else if(ch ==2){
  //   print('Sub = ${a-b}');
  // }

  // else if(ch == 3){
  //   print('Multi = ${a*b}');
  // }

  // else if(ch == 4){
  //   print('Div = ${a/b}');
  // }

  // else{
  //   print('Enter valid choice..!');
  // }

  // Using Switch case

  switch(ch){
    case 1 : 
      print('Add = ${a+b}');
      break;

    case 2 :
      print('Sub = ${a-b}');
      break;

    case 3 :
      print('Multi = ${a*b}');
      break;

    case 4 :
      print('Div = ${a/b}');
      break;

    default :
      print('Enter valid choice..!');
  }
}