import 'dart:io';
void main(List<String> args) {
  var a,ans;
  print('Enter the number : ');       
    ans = double.parse(stdin.readLineSync()!);

  while(true){
    print('1 : Addition \n2 : Subtraction \n3 : Multiplication \n4 : Division');
    String ch = stdin.readLineSync()!;

    if(ch == '='){
      print('Answer = $ans');
      break;
    }

    else{
      print('Enter the number : ');       
      a = double.parse(stdin.readLineSync()!);

      switch(ch){
        case '1' :
          ans += a; 
          break;

        case '2' :
          ans -= a;
          break;

        case '3' :
          ans *= a;
          break;

        case '4' :
          ans /= a;
          break;

        default :
          print('Enter valid choice..!');
          break;
      }
    }
  }
}

