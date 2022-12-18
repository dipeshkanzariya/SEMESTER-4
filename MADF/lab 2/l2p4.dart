import 'dart:io';

void main(List<String> args) {
  double s1,s2,s3,s4,s5,p;
  print('Marks of Sub. 1 : ');
  s1 = double.parse(stdin.readLineSync()!);
  print('Marks of Sub. 2 : ');
  s2 = double.parse(stdin.readLineSync()!);
  print('Marks of Sub. 3 : ');
  s3 = double.parse(stdin.readLineSync()!);
  print('Marks of Sub. 4 : ');
  s4 = double.parse(stdin.readLineSync()!);
  print('Marks of Sub. 5 : ');
  s5 = double.parse(stdin.readLineSync()!);

  p = (s1+s2+s3+s4+s5)/5;

  if(p < 35){
    print('Fail');
  }

  else if(p >= 35 && p< 45){
    print('Pass');
  }

  else if(p >= 45 && p < 60){
    print('Second class');
  }

  else if(p >= 60 && p < 70){
    print('First class');
  }

  else{
    print('Distinction');
  }
}