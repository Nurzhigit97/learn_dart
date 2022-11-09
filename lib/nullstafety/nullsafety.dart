void main(List<String> args) {
  String? str;
  int? value;

//if выражение
// ?? оператор
// ?  оператор

//! null aware операторы
/*
  print(value);
  print(value ?? 0);

  value ??= 42; // если value null то присвоит 42
  print(value);
*/
  //! if
  int defInt(int? aNUllableInt) {
    if (aNUllableInt == null) {
      return 0;
    }
    return aNUllableInt;
  }

  print(defInt(23));
  print(defInt(null));
}
