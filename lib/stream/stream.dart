//! Stream может давать множество данные
import 'dart:math';

void main(List<String> args) {
  useStream1();
}

void useStream1() async {
  // var stream = streamInts().where((number) => number < 2000);
//! get only first two value
  var stream = streamInts().take(2);

  await for (int number in stream) {
    print(number);
  }
}

Stream<int> streamInts() async* {
  for (var i = 0; i < 5; i++) {
    var randomNUm = Random().nextInt(3000);
    await Future.delayed(Duration(milliseconds: randomNUm));
    yield randomNUm;
  }
}
