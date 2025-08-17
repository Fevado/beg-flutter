// abstraction is simply hiding complex details and
//showing only the important parts
// an abstract class cannot be instantiated
//the class hass the word [abstract before it]
// abstract methods lack/have no body
// abstract methods are the ones overidden

// abstract class
abstract class Vehicle {
  String brand;

  Vehicle(this.brand);

  // abstract method
  void accelerate();

  // concrete method
  void displayBrand() {
    print('Brand: $brand');
  }
}

// concrete class
class Car extends Vehicle {
  Car(String brand) : super(brand);

  @override
  void accelerate() {
    print('$brand car is accelerating');
  }
}

void main() {
  Car c1 = Car('Audi');
  c1.displayBrand();
  c1.accelerate();
}
