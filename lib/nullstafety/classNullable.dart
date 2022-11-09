void main(List<String> args) {
  var char = Character(hp: 10, mp: 10, attack: 20);
  print(char);

//! cascading nullable
/*
  getAddress()
    ?..setStreet('Pushka')
    ..city = 'Nur'
    ..zip('Hello0');
*/
}

class Character {
  final double hp;
  final double mp;
  final double? attack; //! we cant get value but we will have null
  late final int level; //! After we will put value
  final double defense;
//! required we must have value with name operator
  Character({required this.hp, required this.mp, this.attack})
      : level = 80,
        defense = 12;
  @override
  String toString() => 'hp:$hp mp:$mp attack:$attack defense:$defense';
}
