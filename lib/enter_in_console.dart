import 'dart:io';

enter_in_console() {
  print('Enter num');
  final line = stdin.readLineSync() ?? '';
  final num = int.tryParse(line);

  if (num != null) {
    if (num == 6) {
      print('True');
    } else if (num > 6) {
      print('More');
    } else {
      print('less');
    }
  } else {
    print('dont type num');
  }
}

enter_in_console2() {
  print('Enter num');
  final line = stdin.readLineSync() ?? '';
  final num = int.tryParse(line);

  if (num != null) {
    if (num == 6) {
      print('True2');
    } else if (num > 6) {
      print('More2');
    } else {
      print('less2');
    }
  } else {
    print('dont type num2');
  }
}
