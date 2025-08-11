// encapsulation is a method of hiding how something is 
// processed and only showing the output 


class Circle {
  // create a private variable _radius
  double _radius;

  Circle(this._radius);

  // getter method to access the radius
  double get radius => _radius;

  // settermethod to update radius with validation
  set radius(double value) {
    if (value > 0) {
      _radius = value;
    } else {
      print('Radius must be greater than zero');
    }
  }

  // method to calculate area of circle
  double calcArea() {
    return 3.142 * _radius * _radius;
  }

  double calcPerim() {
    return 2 * 3.142 * _radius;
  }
}

void main() {
  Circle circle = Circle(7);
  print('Initial radius ${circle.radius}');
  print("Initial area ${circle.calcArea()}");
  print("Initial perimeter ${circle.calcPerim()}");

  // updating the radius of circle
  circle.radius = 14.0;
print('updated radius ${circle.radius}');
print("updated area ${circle.calcArea()}");
print("updated perimeter ${circle.calcPerim()}");

}
