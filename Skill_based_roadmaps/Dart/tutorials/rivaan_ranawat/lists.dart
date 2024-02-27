void main() {
  // dynamic type
  var list = [1, 2, 3, "hello"];
  print(list[1]);

  List<int> marks = [1, 2, 3];

  List<Student> students = [
    Student('Kien', 10),
    Student('Nam', 9),
    Student('Phong', 8),
    Student('Quan', 7),
  ];

  final student = students[1];

  // type check
  // student.runtimeType == Student
  if (student is Student) {
    print(student.name);
  } else {
    print(student);
  }

  // update
  students[3] = Student('Long', 3);
  print(students);
  
  // add
  students.add(Student('Minh', 6));
  print(students);

  students.insert(2, Student("Van", 7));
  print(students);

  // remove
  students.remove(students[0]);
  print(students);

  // filter
  // 1st approach
  // 1. A new list of students empty
  // 2. run a for loop
  // 3. check if the grade of a student is greater than 6
  // 4/ if true, add student to new list
  List<Student> filteredStudents = [];
  for (int i = 0; i < students.length; i++) {
    if (students[i].marks > 6) {
      filteredStudents.add(students[i]);
    }
  }
  // or 
  /* for (final student in students) */
  print(filteredStudents);

  // 2nd approach iterable
  print(students.where((student) => student.marks > 6).toList());
}

class StudentTest<T> {
  final T name;
  final int marks;


  StudentTest(this.marks, this.name);

  void setName(T name) {
    print('New name $name');
  }
}

class Student {
  final String name;
  final int marks;

  Student(this.name, this.marks);

  @override
  String toString() => 'Student: $name';
}