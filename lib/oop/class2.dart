import 'package:meta/meta.dart';

void main(List<String> args) {
  final user = User.admin(true);
  final userName = Admin(
      specialAdminField: 124, firstName: 'firstName', lastName: ' lastName');
  print(userName);

  print(user is! Admin);
}

class User {
  String _firstName;
  String _lastName;

  User(
    this._firstName,
    this._lastName,
  );
  String get fullName => '$_firstName $_lastName';

  factory User.admin(bool admin) {
    if (admin) {
      return Admin(specialAdminField: 123, firstName: 'Nur2', lastName: 'SH');
    } else {
      return User('c', 'd');
    }
  }

  @mustCallSuper
  void signOut() {
    print('Singing out');
  }
}

class Admin extends User {
  final double specialAdminField;

  Admin(
      {required this.specialAdminField,
      required String firstName,
      required String lastName})
      : super(firstName, lastName);
  @override
  String get fullName => '"Admin:" ${super.fullName}';

  @override
  void signOut() {
    print('Perfoming admin sing out steps');
    super.signOut();
  }
}
