void main(List<String> args) {
  final names = ['Nur', 'Hello', 'Jone', 'Jane'];
//! where name length equal to four
  final namesFiltered = names.where((element) => element.length == 4).toList();
  // print(namesFiltered);
//! create signin signout
  bool isSigned = false;
  var age = <String>[
    'This is fake content',
    if (isSigned) 'Sign Out' else 'Sign in'
  ];
  print(age);
//! create values in array // 0,1,2,3,4,5,1,2,3
  final x = <String>[
    for (int i = 0; i <= 5; i++) i.toString(),
    for (final number in [1, 2, 3]) number.toString(),
  ];
  print(x);
  //! for in
//   for (var el in names) {
//     print(el);
//   }
  //!forEach
  // namesFiltered.forEach(print);
}
