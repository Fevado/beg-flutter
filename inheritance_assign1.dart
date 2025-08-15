class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void displayInfo() {
    print('Name: $name');
    print('Salary: $salary');
  }
}

class Manager extends Employee {
  String department;

  Manager(String name, double salary, this.department) : super(name, salary);

  void displayManagerInfo() {
    displayInfo();
    print('Department: $department');
  }

  void giveRaise(double amount) {
    salary += amount;
    print('New salary is $salary');
  }
}

void main() {
  Manager m1 = Manager('Vad', 270000, 'Mobile Dev');
  m1.displayManagerInfo();
  m1.giveRaise(100000);
}
