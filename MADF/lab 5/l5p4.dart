import 'dart:io';

void main(List<String> args) {
  stdout.write('Enter hours : ');
  int h1 = int.parse(stdin.readLineSync()!);

  stdout.write('Enter minutes : ');
  int m1 = int.parse(stdin.readLineSync()!);

  stdout.write('Enter hours to add : ');
  int h2 = int.parse(stdin.readLineSync()!);

  stdout.write('Enter minutes to add : ');
  int m2 = int.parse(stdin.readLineSync()!);

  Time t1 = Time(h1, m1);
  Time t2 = Time(h2, m2);
  t1.addition(t2);
}

class Time {
  int? hour, minute;

  Time(int hour, int minute) {
    this.hour = hour;
    this.minute = minute;
  }

  void addition(Time t2) {
    this.minute = this.minute! + t2.minute!;
    if (this.minute! >= 60) {
      this.minute = this.minute! - 60;
      this.hour = this.hour! + 1;
    }
    this.hour = this.hour! + t2.hour!;
    print('Time :- ${this.hour} : ${this.minute}');
  }
}
