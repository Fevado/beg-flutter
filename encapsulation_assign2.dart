class Student {
  String _name;
  List<int> _marks = [];

  Student(this._name);

  String get name => _name;

  // Adding a setter for the name
  // Allows for changing of the name
  set name(String newName) {
    if (newName.isNotEmpty) {
      _name = newName;
    } else {
      print('Name cannot be empty');
    }
  }

  void addMark(int mark) {
    if (mark > 0 && mark <= 100) {
      _marks.add(mark);
    } else {
      print('Invalid marks');
    }
  }

  double getAverage() {
    int total = 0;
    if (_marks.isEmpty) return 0;
    for (var mark in _marks) {
      total += mark;
    }
    return total / _marks.length;
  }

  void displayGrades() {
    print('Grades: ${_marks}');
  }

  bool hasPassed() {
    return getAverage() >= 50;
  }

  void displayInfo() {
    print('Name: ${_name}');
    print('Grades: ${_marks}');
    print('Average: ${getAverage()}');
    if (hasPassed()) {
      print('Student has Passed');
    } else {
      print('Student has failed');
    }
  }
}

void main() {
  Student s1 = Student('Vad');
  s1.addMark(67);
  s1.addMark(77);
  s1.addMark(89);

  Student s2 = Student('Jane');
  s2.addMark(54);
  s2.addMark(37);
  s2.addMark(10);
  s2.name = 'Ken';

  s1.displayInfo();
  s2.displayInfo();
}
