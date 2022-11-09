import 'dart:ffi';
import 'dart:html';

void main(List<String> args) {
  // print('codeisString' is String);
  // print('codeisString' is! String);
  // print('codeisString' is int);
//! ??=
  var b;
  var value = 12;
  b ??= value; //? присвой зн. b если b равно Null
  print(b);
//!
  bool iSPublic = false;
  var visiblility = iSPublic ? 'public' : 'private';
  print(visiblility);

  //!
  String getName(String name) => name ?? 'Guest';
  //? String getName(String name) => name != null ? name : 'Guest';

  print(getName('Alex'));

  //! cascasding operator
  // querySelector('#confirm')
  //   ..text = 'Confirm'
  //   ..classes.add('important')
  //   ..onClick.listen((event) => window.alert('Confirmed'));

  //? Аналогично записи такой
  // var button = querySelector('#confirm');
  // button.text = 'Confiurm';
  // button.classes.add('important');
  // button.onClick.listen((event) => window.alert('Confirmed'));
}
