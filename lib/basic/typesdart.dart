import 'package:characters/characters.dart';
/* 
    0 0 0 0 0 0 0 1=1
    0 0 0 0 0 0 1 0=2 
    0 0 0 0 0 0 1 1=3 
 */

void main() {
  var number = 0;
  int intValue = 12;
  double doubleVal = 23.3;

  // print(number.runtimeType);
  // print(intValue.runtimeType);
  // print(doubleVal.runtimeType);
  // print(value);

//! String
  String str = 'Learn Dart';

  int numb = 42;

  print('${str.toUpperCase()} - $numb');

//! Сравниваем изм. тип str on num
  print(1 == int.parse('1'));
  print(1.1 == double.parse('1.1'));
  print('1' == 2.toString());
  print('1.34' == 1.34.toStringAsFixed(2));

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!22
/*   int res = 24 ~/ 5; //! ~ return only int

  String? resNull;
  print(resNull?.length); //to get  null length
 */
//! && ||
  // bool t = ((4 > 5) && (6 == 6)) || (7 <= 9);
  // print(t);

  // ! Smile got more length- character for get with symbols dont index
  var hi = 'Hi 😃';
  print('length by index ${hi.length}'); // dont work
  //! symbol
  print('length by symbols ${hi.characters.length}');
}
