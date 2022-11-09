class Car {
  int currentSpeed = 0;
  void printCurrentSpeed() {
    print(currentSpeed);
  }

//! static mutation arent good
  static int totalCurrentSpeed = 0;
  static void printTotalCount() {
    print(totalCurrentSpeed);
  }
}

//! Static usefull for groupping
class Settings {
  static const minPasswordLength = 6;
  static const serverUrl = 'https://google.com';
  final maxPassword = 18;
}

void main(List<String> args) {
  final car1 = Car();
  final car2 = Car();
//!
  car1.currentSpeed = 90;
  car2.currentSpeed = 190;

  car1.printCurrentSpeed();
  car1.printCurrentSpeed();
//! Global
  Car.totalCurrentSpeed;

  //! Settings
  //? here we cant get without static variable
  print(Settings.minPasswordLength);
}
