import 'dart:math';

enum Color { Red, Green, Blue }

//! Shape сделали абстрактным из за этого у него будем получать только свойства и не можем вызыват class Shape
abstract class Shape {
  //! get можно не вызыват в super он просто чтобы читат и в никакие конструкторы и в др. клсаах не вызыват ано сам будет доступен
  //! И в наших классах есть цвет и плошадь
  double
      get square; //! если было-бы не абстракный то в get нужно давать зн. по умолчанию
  final Color color;

  Shape(this.color);

  @override
  String toString() {
    return '$square $color';
  }
}

class Rectangle extends Shape {
  final int sideA;
  final int sideB;
  final int sideC;

//! Переопределяем
  @override
  double get square => (sideA * sideB * sideC).toDouble();

  Rectangle(
    Color color,
    this.sideA,
    this.sideB,
    this.sideC,
  ) : super(color);

  @override
  String toString() {
    //! toString() вызвали из Shape и добавили свой
    return super.toString() + '$sideA $sideB $sideC';
  }
}

class Circle extends Shape {
  final int radius;

  @override
  //! pi вызвали из Math
  double get square => pi * radius * radius;

  Circle(Color color, this.radius) : super(color);
}

class Square extends Shape {
  final int side;
  @override
  double get square => (side * side).toDouble();

  Square(Color color, this.side) : super(color);

  int sideA() {
    return side;
  }

  int sideB() {
    return side;
  }
}

void main(List<String> args) {
  final rectangle = Rectangle(Color.Green, 10, 3, 90);
  final circle = Circle(Color.Red, 50);
  final square = Square(Color.Green, 9);
  print('rectangle: ${rectangle}');
  print('circle: ${circle}');
  print('square: ${square}');
  print('square: ${square}');

//! здесь мы будем получать toString в Shape данные square and color всех классов в массиве
  final list = [rectangle, circle, square];
  print(list.first);

//! enum
  if (square.color == Color.Green) {
    print('Цвет настрения красный ${square.color}');
  }
}
