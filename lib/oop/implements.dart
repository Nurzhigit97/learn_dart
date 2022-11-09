import 'dart:ffi';

abstract class Posuda {
//! Каждый класс будет реализовывать свой method
  void put();
  void fill();
}

abstract class Weighttable {
  final double weight;
  Weighttable(this.weight);
}

class Cup implements Weighttable, Posuda {
  Cup(this.weight);
  @override
  final double weight;
  @override
  void put() {
    print('put cap');
  }

  @override
  void fill() {
    print('fill cap');
  }
}

//! Получает все  свойства и методы от Posuda, Weighttable
class Plate implements Weighttable, Posuda {
  //! при наследовании от Things мы получаем weight
  Plate(this.weight);
  @override
  final double weight;
  @override
  void put() {
    print('fill cap');
  }

  @override
  void fill() {
    print('fill cap');
  }
}

//! Наследуется от Posuda
class Table extends Posuda {
  @override
  void put() {
    print('fill cup');
  }

  @override
  void fill() {
    print('fill cap');
  }
}

void main(List<String> args) {
  final cup = Cup(34.43);
  final table = Table();
  cup.weight;
  table.fill();
}
