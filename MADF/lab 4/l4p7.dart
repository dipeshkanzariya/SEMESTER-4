import 'dart:io';

void main(List<String> args) {
  num sum = 0;
  print('Enter n : ');
  int n = int.parse(stdin.readLineSync()!);  
  List<dynamic> list = [];

  for(int i = 0 ; i < n ; i++){
    print('Enter element : ');
    int a = int.parse(stdin.readLineSync()!);
    list.add(a);
  }

  for(int i = 0 ; i < list.length ; i++){
    if(list[i] % 3 == 0 || list[i] % 5 ==0){
      sum = sum +list[i];
    }
  }

  print('Sum = $sum');
}

 