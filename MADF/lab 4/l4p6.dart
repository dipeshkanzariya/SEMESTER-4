import 'dart:io';

void main(List<String> args) {
  int odd_count = 0;
  int even_count = 0;
  print('Enter n : ');
  int n = int.parse(stdin.readLineSync()!);  
  List<dynamic> list = [];

  for(int i = 0 ; i < n ; i++){
    print('Enter element : ');
    int a = int.parse(stdin.readLineSync()!);
    list.add(a);
  }

  for(int i = 0 ; i < list.length ; i++){
    if(list[i] % 2 == 0){
      even_count++;
    }
    else{
      odd_count++;
    }
  }

  print('Count of odd is = $odd_count');
  print('Count of even is = $even_count');
}