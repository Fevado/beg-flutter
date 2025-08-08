class Person {
  String name;
  int age;

  // using a constructor
  Person(this.name, this.age);

  // Creating a method for this class
  void displayInfo() {
    print('Name: ${name}, Age:${age}');
  }
}

void main() {
  // creating an object
  Person myPerson = Person('Auntyyy', 19);

  // calling the object using the method created
  myPerson.displayInfo();
}
