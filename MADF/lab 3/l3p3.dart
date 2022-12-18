import 'dart:io';

void main(List<String> args) {
  int n,flag=0;
  print('Enter number : ');
  n = int.parse(stdin.readLineSync()!);

  for(int i = 2 ; i <= n/2 ; i++){
    if(n % i == 0){
      flag = 1;
      break;
    }
  }
  if(flag == 0){
    print('Given number is prime');
  }
  else{
    print('Given number is non-prime');
  }
}