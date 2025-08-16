class Shape {
  double area() {
    return 0;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double area() {
    return length * width;
  }
}

void main() {
  Shape s1 = Shape();
  Circle c1 = Circle(7);
  Rectangle r1 = Rectangle(7,7);

  print(s1.area());
  print(c1.area());
  print(r1.area());
}

// I was trying to override a no-argument method with one that has parameters
// just learnt that it is not possible instead create variables in the said class and use constructors
