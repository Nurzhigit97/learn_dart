class Square {
  final int _side;
  int get width => _side;
  int get height => _side;
  int get square => width * height;

  Square(this._side);

  // Square.wrong(this.width, this.height);

  @override
  String toString() {
    return '$width $height';
  }
}

class Student {
  String? name;
  String? lastName;
  int age;
  late String faculty;
  List<String>? students;

  Student(
      {this.name,
      this.lastName,
      required this.age,
      this.faculty = 'fiit',
      this.students});
  @override
  String toString() {
    return '$name $lastName $age $faculty $students';
  }
}

void main(List<String> args) {
  final firstSt = Student(
      name: 'Nurjigit', age: 23, students: ['Hello', 'world', 'Nurzhigit2']);
  // print(firstSt.students?.length);

  final ff = Square(5);
  print(ff._side);
  print(ff.height);
  print(ff.square);
}
