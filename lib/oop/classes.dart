class User {
  String? name;
  num? age;
  String login;

  User({this.name, this.age, required this.login});
  addGmail() {
    if (!login.contains('@gmail.com')) {
      print('${login}@gmail.com');
    } else {
      print(login);
    }
  }

  @override
  String toString() => 'User $name age:$age Login:${login}';
}

void main(List<String> args) {
  User newUser = User(
    name: 'Nurjigit',
    age: 24,
    login: 'nur',
  );
  User newUser2 = User(
    name: 'Nurjigit',
    age: 24,
    login: 'nur@gmail.com',
  );
  print(newUser);
  print(newUser.addGmail());
  print('example 2');
  print(newUser2);
  print(newUser2.addGmail());
}
