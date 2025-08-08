class Student {
  String name;
  List<int> marks = [];

  Student(this.name);

  // add marks
  void addMark(int mark) {
    marks.add(mark);
  }

  // Calculate average
  double getAverage() {
    if (marks.isEmpty) return 0;
    int total = 0;
    for (var mark in marks) {
      total += mark;
    }
    return total / marks.length;
  }

  // check if passed
  bool hasPassed() {
    return getAverage() >= 50;
  }

  // method for displaying student info
  void displayInfo() {
    print('Student: ${name}');
    print('Marks: ${marks}');
    print('Average: ${getAverage()}');
    if (hasPassed()) {
      print('Status: Passed');
    } else {
      print('Status: Failed');
    }
  }
}

void main() {
  // create Student object
  Student s1 = Student('Vad');
  s1.addMark(87);
  s1.addMark(67);
  s1.addMark(77);

  Student s2 = Student('Ken');
  s2.addMark(43);
  s2.addMark(17);
  s2.addMark(24);

  s1.displayInfo();
  s2.displayInfo();
}
