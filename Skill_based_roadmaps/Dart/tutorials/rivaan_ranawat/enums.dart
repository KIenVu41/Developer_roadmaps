void main() {
  final employee1 = Employee('Kien', EmployeeType.swe);
  final employee2 = Employee('Long', EmployeeType.finance);
  final employee3 = Employee('An', EmployeeType.marketing);

  employee1.fn();
}

enum EmployeeType {
  swe,
  finance,
  marketing
}

class Employee {
  final String name;
  final EmployeeType type;

  Employee(this.name, this.type);

  void fn() {
    switch(type) {
      case EmployeeType.swe:
        print('Software engineer');
      case EmployeeType.finance:
        print('Finance');
      case EmployeeType.marketing:
        print('Marketing');
    }
  }
}