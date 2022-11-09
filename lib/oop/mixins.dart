//! we without constructor can get methods
//!mixin not extends
mixin Birds {
  String name = 'birds';
  void say() {
    print('Hello birds');
  }
}

mixin Mehanism {
  String name = 'mehanics';
  void remote() {
    print('Hello flyers machin');
  }
}

mixin Flyeble {
  void fly() {
    print('Hello flyers');
  }
}

class Duck with Birds, Flyeble {}

class Machine with Mehanism, Flyeble {}

void main(List<String> args) {
  var animal = Duck();
  print(animal.name);
  var machine = Machine();
  machine.remote();
  machine.fly();
}
