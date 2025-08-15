// Inheritance is the ability of a class to borrow
//and reuse code from another class
// like a child inheriting traits from a parent(base class)

// this class vehicle is a base class(Superclass/parent)
class Vehicle {
  String brand;
  int year;

  Vehicle(this.brand, this.year);

  void displayInfo() {
    print('Brand: $brand');
    print('Year: $year');
  }
}

// this class car is a derived class(child)
// it inherits from Vehicle
class Car extends Vehicle {
  String model;

  // The constructor has items from base class
  Car(String brand, int year, this.model) : super(brand, year);

  // method to display car info
  void displayCarInfo() {
    displayInfo(); //call the base method
    print('Model $model');
  }
}

void main() {
  // Creating an instancs of class Car
  Car car = Car('Toyota', 2004, 'Corolla');
  
// calling the subclass method
  car.displayCarInfo();
}
