import 'dart:io';

void main(List<String> args) {
  print('Enter the string : ');
  String s = stdin.readLineSync()!;
  String rev = '';
  for(int i = s.length-1 ; i >= 0 ; i--){
    rev = rev + s[i];
  }

  print('$rev');
}