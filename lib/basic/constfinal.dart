void main(List<String> args) {
  //!WE cant get const variable
  // const someValue = getDoubleValue();
  // print(someValue);
  double getDoubleValue() {
    return 12.11;
  }

  //! WE can get final variable
  final someFinalValue = getDoubleValue();
  print(someFinalValue);

//! we can change value from
  // final a = const [1, 2, 3];
  // a.add(4);
  // print(a);
  //! we cant change value from
  final aa = [1, 2, 3];
  aa.add(4);
  print(aa);
}
