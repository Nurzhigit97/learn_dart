void main(List<String> args) {
  var list = [1, 2, 3];
  //! Стрелочные функции
  list.forEach((val) => print('${val} Hello'));

//! Именованные параметры
  String getModel({String, title, int, value}) {
    return '${title.toUpperCase()} - ${value + 10}';
  }

  print(getModel(title: 'Hello', value: 20));

//! необязательные аргументы
  String hello(String name, String msg, [String? device]) {
    var res = '$name say $msg';
    if (device != null) {
      res = '$res from $device';
    }
    return res;
  }

  print(hello(
    'Alex',
    'Hello',
    'Iphone 100x',
  ));

  //! args with default value
  String trueName({required String name, bool correct = false}) {
    return correct ? name : 'Dont true ${name}';
  }

  print(trueName(name: 'Nur', correct: true));

  void createListAndMap(
      {List<int> list = const [2, 3, 4],
      Map<String, String> games = const {
        'first': 'Gothic2',
        'third': 'Wither',
      }}) {
    print(list[1]);
    print(games);
  }

  createListAndMap();

  //!Замыкание
  Function addF(int add) {
    return (int i) => add + i;
  }

  var add2 = addF(2);
  var add4 = addF(4);
  print(add2(3)); //2+3
  print(add2(4)); //2+4
  print(add4(5)); //4+5
}
