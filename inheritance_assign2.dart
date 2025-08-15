// Vehicle management system
class Vehicle {
  String _brand;
  String _model;
  int _year;

  Vehicle(this._brand, this._model, this._year);

  int get year => _year;

  set year(int value) {
    if (value >= 1886) {
      _year = value;
      print('This car was inventend in the year $value');
    } else {
      print('First car was not yet invented');
    }
  }

  void displayInfo() {
    print('Brand: $_brand');
    print('Model: $_model');
    print('Year: $year');
  }
}

class Car extends Vehicle {
  int _doors;

  Car(String _brand, String _model, int _year, this._doors)
    : super(_brand, _model, _year);

  int get doors => _doors;

  set doors(int value) {
    if (value > 0) {
      _doors = value;
      print('The numnber of car doors is $value');
    } else {
      print('Doors should be greater than Zero');
    }
  }

  void showCarDetails() {
    displayInfo();
    print('Doors $doors');
  }
}

class ElectricCar extends Car {
  double _batteryCapacity;

  ElectricCar(
    String _brand,
    String _model,
    int _year,
    int _doors,
    this._batteryCapacity,
  ) : super(_brand, _model, _year, _doors);

  double get batteryCapacity => _batteryCapacity;

  set batteryCapacity(double value) {
    if (value > 0) {
      _batteryCapacity = value;
      print('Battery capacity is $value');
    } else {
      print('Battery capacity value must be greater than zero');
    }
  }

  void showElectricCarDetails() {
    showCarDetails();
    print('Battery capacity: $batteryCapacity');
  }

  void charge() {
    if (batteryCapacity == 100) {
      print('Battery full');
    } else {
      print('Battery Charging...');
    }
  }
}

void main() {
  Vehicle v1 = Vehicle('Toyota', 'pirius prime', 2024);
  v1.displayInfo();

  Car c1 = Car('Tesla', 'Model Y', 2024, 4);
  c1.showCarDetails();
  
  ElectricCar e1 = ElectricCar('Audi', 'e-tron GT', 2024, 4, 93.4);
  e1.showElectricCarDetails();
  e1.charge();
}
