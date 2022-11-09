//! Stream может давать множество данные
import 'dart:math';

void main(List<String> args) {
  useStream2();
}

void useStream2() {
  // streamInts().listen((number) => print(number < 2000));
  streamInts().skip(2).listen((number) => print(number < 2000));
}

Stream<int> streamInts() async* {
  for (var i = 0; i < 5; i++) {
    var randomNUm = Random().nextInt(3000);
    await Future.delayed(Duration(milliseconds: randomNUm));
    yield randomNUm;
  }
}
