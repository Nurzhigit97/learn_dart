void main(List<String> args) {
  var myMap = {
    'name': 'Nurjigit',
    'age': 22,
    'city': 'Bishkek',
    'address': [
      {'country': 'Kyrgyzstan', 'city': 'Bishkek'},
      {'country': 'Indonesia', 'city': 'Puga'},
    ],
  };
  var obj = Person.fromJson(myMap);
//! nested model
  var myAddress = obj.address;
  print(myAddress!.map((e) => print(e.city)).toList());
}

class Person {
  String? name;
  int? age;
  String? city;
  //!did add nested модел
  List<Address>? address;
  Person({this.name, this.age, this.city, this.address});
  Person.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    city = json['city'];
//! Address
    if (json['address'] != null) {
      address = <Address>[];
      (json['address'] as List).forEach((e) {
        address!.add(Address.fromJson(e));
      });
    }
  }
}

//! nested model
class Address {
  String? country;
  String? city;

  Address({
    this.country,
    this.city,
  });

  Address.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    city = json['city'];
  }
}
