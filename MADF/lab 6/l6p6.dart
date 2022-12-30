import 'package:intl/date_symbol_data_file.dart';
import 'package:intl/intl.dart';

void main(List<String> arguments) {
  DateTime current_date = DateTime.now();

  // Sun, 12/18/2022
  print(DateFormat.yMEd().format(DateTime.now()));

  // Dec 2022
  print(DateFormat.yMMM().format(DateTime.now()));

  // Sunday, December 18, 2022
  print(DateFormat.yMMMMEEEEd().format(DateTime.now()));

  // 12/18/2022
  print(DateFormat.yMd().format(DateTime.now()));

  // Sun, Dec 18, 2022
  print(DateFormat.yMMMEd().format(DateTime.now()));

  // Dec 18, 2022
  print(DateFormat.yMMMd().format(DateTime.now()));

  // December 18, 2022
  print(DateFormat.yMMMMd().format(DateTime.now()));

  // 12/2022
  print(DateFormat.yM().format(DateTime.now()));

  // December 2022
  print(DateFormat.yMMMM().format(DateTime.now()));

  // Q4 2022
  print(DateFormat.yQQQ().format(DateTime.now()));

  // 4th quarter 2022
  print(DateFormat.yQQQQ().format(DateTime.now()));

  // 18-12-2022
  print("${current_date.day}-${current_date.month}-${current_date.year}");
}
