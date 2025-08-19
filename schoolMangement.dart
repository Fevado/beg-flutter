// A school managemnt system
abstract class Person {
  String _name;
  int _age;

  Person(this._name, this._age);

  int get age => _age;

  set age(int value) {
    if (value > 0) {
      _age = value;
    } else {
      print('Age must be greater than Zero');
    }
  }

  void displayRole();

  void displayInfo() {
    print('Name: $_name');
    print('Age: $age');
  }
}

class Student extends Person {
  int _gradeLevel;

  Student(String _name, int _age, this._gradeLevel) : super(_name, _age);

  int get gradeLevel => _gradeLevel;

  set gradeLevel(int value) {
    if (value >= 1 && value <= 12) {
      _gradeLevel = value;
    } else {
      print('Invalid grage level');
    }
  }

  @override
  void displayRole() {
    print('I am a Student in grade $gradeLevel');
  }
}

class Teacher extends Person {
  String subject;

  Teacher(String _name, int _age, this.subject) : super(_name, _age);
  @override
  void displayRole() {
    print('I am a Teacher of $subject');
  }
}

void printRole(Person p) {
  p.displayRole();
}

void main() {
  Student s = Student('Vad', 12, 10);
  Teacher t = Teacher('Auntyy', 34, 'English');

  List<Person> People = [s, t];
  for (var person in People) {
    person.displayInfo();
    printRole(person);
  }
}
