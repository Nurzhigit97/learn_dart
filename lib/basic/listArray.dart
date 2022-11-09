void main(List<String> args) {
//! List(array)------------------------------------
  var arr = [1, 2, 34];
  List<int> arr2 = [4, ...arr];
  print(arr2);

  //! null valiable
  var nullVariableList;
  var list3 = [1, ...?nullVariableList];
  print(list3);

  bool permission = true;
  var nav = ['home', 'about', if (permission) 'admin'];
  print(nav);
  //! for in List
  List<int> intList = [1, 2, 3, 4, 5];
  List<String> strList = ['>0', for (var i in intList) '>$i'];
  print(strList);

  //! fillRange-from 0 to 3 change value to 10
  var listOfInt = [1, 5, 2, 6];
  listOfInt.fillRange(0, 3, 10);
  print(listOfInt);

//! slice-from 0 to 3
  var listRange = [1, 5, 2, 6];
  final range = listRange.getRange(0, 3);
  print(range);

//! slice-from 0 to 3 and insert change our list dont create a new
  var insert_value = [1, 5, 2, 6];
  listRange.insert(0, 0);
  print(insert_value);

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1111
  final List<dynamic> myList = [1, 12, 2, 'Welcome', 3, 'hello', 1, true];

  // print(myList[0]);
//! get only unique values
  // print(myList.toSet());
//! replace first-if find will be this value second- change to this value
  // for (var i = 0; i < myList.length; i++) {
  //   print(myList[i].toString().trim().replaceAll(r'l', 'w'));
  // }
  //! for search world from List(l)
  var newarr = [];
  for (var i = 0; i < myList.length; i++) {
    if (myList[i].toString().contains('el')) {
      newarr.add(myList[i]);
    }
  }
  print(newarr);
  // //! for search world from List who start with(ue)
  // for (var i = 0; i < myList.length; i++) {
  //   print(myList[i].toString().trim().endsWith('ue'));
  // }
  // //! for all comma frap to list values
  // for (var i = 0; i < myList.length; i++) {
  //   print(myList[i].toString().split(','));
  // }
}
