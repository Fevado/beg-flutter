// polymorphism is same method but different behaviour depending on object/instance
// you can call one method name and each class instance responds in its own way
// we use the `{@override}` to overide the base class method

// Create a Base class
class Animal {
  // make a method to be overriden
  void makeSound() {
    print('Animals make sounds');
  }
}

// make a derived class
class Dog extends Animal {
  @override
  void makeSound() {
    print('Dogs bark');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Cats meow');
  }
}

void main() {
  // creating an instance of each class
  Animal a1 = Animal();
  Dog d1 = Dog();
  Cat c1 = Cat();

  // calling the method for each instance
  a1.makeSound();
  d1.makeSound();
  c1.makeSound();
}
