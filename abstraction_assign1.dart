abstract class Appliances {
  String name;

  Appliances(this.name);

  void turnOn() {}

  void turnOff() {
    print('The $name is now off');
  }
}

class Fan extends Appliances {
  Fan(String name) : super(name);

  @override
  void turnOn() {
    print('The $name is spinning');
  }
}

class WashingMachine extends Appliances {
  WashingMachine(String name) : super(name);

  @override
  void turnOn() {
    print('The $name is starting the wash cycle');
  }
}

void main() {
  Fan f1 = Fan('Vad');
  WashingMachine w1 = WashingMachine('Auntyy');

  f1.turnOn();
  f1.turnOff();
  w1.turnOn();
  w1.turnOff();
}
