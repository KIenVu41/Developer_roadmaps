void main() {
  final employee1 = Employee('Kien', EmployeeType.swe);
  final employee2 = Employee('Long', EmployeeType.finance);
  final employee3 = Employee('An', EmployeeType.marketing);

  employee1.printSalary();
}

enum EmployeeType {
  swe(20000),
  finance(15000),
  marketing(16000);

  final int salary;

  const EmployeeType(this.salary);

}

class Employee {
  final String name;
  final EmployeeType type;

  const Employee(this.name, this.type);

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

  void printSalary() {
    print(type.salary);
  }
}