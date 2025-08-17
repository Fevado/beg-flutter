class Animal {
  void makeSound() {
    print('Animals make sounds');
  }

  void move() {
    print('Animals also move');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Dogs Bark');
  }

  void move() {
    print('Dogs Run');
  }
}

class Bird extends Animal {
  @override
  void makeSound() {
    print('Birds Chirp');
  }

  void move() {
    print('Birds Fly');
  }
}

void main() {
  Animal a1 = Animal();
  Dog d1 = Dog();
  Bird b1 = Bird();

  a1.makeSound();
  a1.move();
  d1.makeSound();
  d1.move();
  b1.makeSound();
  b1.move();
}
