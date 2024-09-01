// extension
import 'student.dart';
import 'user.dart';

void main() {
  var user = User(1, 'KIEN');
  user.logExtension();
  var student = Student(2, 'GS');
  student.logInfor();
}
