//! Ленивая загурзка переменной в классах
class LateExample {
  late int intValue;
  late double doubleValue;
  LateExample(this.intValue, this.doubleValue);
  LateEXample() {
    intValue = 42;
    doubleValue = 0.0;
  }

  @override
  String toString() => 'Value is $intValue & $doubleValue';
}

void main() {
  // var lateEx = LateExample(1, 1.1);
  // print(lateEx);

//! Ленивая загурзка переменной в функции
  int getData() {
    print('get data...');
    return 42;
  }

// получить print даже если мы не вызвали
  int data2 = getData();
  //? с late мы получим правильно
  late int data = getData();
  print(data);
}
