void main() {
  final sonalStudent = Student('Sonal', 5);

  Set<Student> students = {
    Student('Kien', 10),
    Student('Long', 7),
    sonalStudent,
    sonalStudent,
  };

  print(students);

  // convert list to set
  List<Student> studentList = [
    Student('Hoang', 7),
    Student('An', 6),
  ];

  students = studentList.toSet();
  print(students);
}

class Student {
  final String name;
  final int marks;

  Student(this.name, this.marks);

  @override
  String toString() => 'Student: $name';
}