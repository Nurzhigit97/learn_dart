void main(List<String> args) {
  Map<String, String> values = {
    'k1': 'values1',
    'k2': 'values2',
    'k3': 'values3',
  };

  //!
  var films = Map();
  films['key1'] = 'val1';
  films['key2'] = 'val2';

  //!add to films
  films = {'key3': 'value3'};
  print(films);
  print(values);

// cant change
//!const * также spread и spread-nullabe, id И for
  final constMap = const {
    1: 'one',
    2: 'two',
    3: 'three',
  };

//?????????????????????????????????????????????????????????2
  Map<String, dynamic> myMap = {
    'name': 'Nur',
    'age': 18,
    'registered': true,
    'address': [
      {'country': 'Kyrgyzstan', 'city': 'Bishkek'},
      {'country': 'Indonesia', 'city': 'Puga'}
    ],
  };
  // print(myMap['objColors']['blue']);
//! modification
  for (var el in [myMap.entries]) {
    print(el.first.value);
  }

  // //! object,str,array,startSlice with second value
  // for (var el in myMap.values) {
  //   print(el.toString().trim().substring(0, 2));
  // }

  //! get attachment obj
  // var addressList = myMap['address'];
  // (addressList as List).forEach((e) {
  //   print(e['city']);
  // });

//! set property
  // Set<int> mySet = {1, 2, 4, 5, 4};
  // print(mySet);
//! will be сравнение first and second list and will get new list
  final a = const {
    'one',
    'two',
    'three',
  };
  final b = const {
    'one',
    'two',
    'thr',
  };

  final getOnlyDiferenceFromFirst = a.difference(b);
  final getONlyEqualValues = a.intersection(b);
  final concatAllValues = a.union(b);
  print(getOnlyDiferenceFromFirst);
}
