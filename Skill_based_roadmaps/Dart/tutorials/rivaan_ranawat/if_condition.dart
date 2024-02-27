bool isNotAllowed = false;

void main() {
  // If Statement
  int age = 30;

  // relational operator <, <=, >, >=, ==
  if (age >= 18) {
    print("ADULT");
  } else if (age >= 21) {
    print("ADULT 21");
  } else {
    print("CHILD");
  }

  // logic operator !, &&, ||
  if (!isNotAllowed && age >= 18) {
    print("Allowed");
  }

  // nested if
  if (age > 18) {
    if (isNotAllowed) {
      print("Not allowed");
    } else {
      print("Allowed");
    }
  }

  String str = "hi";
  String str2 = 'hi';
  if (str == str2) {
    print("equal");
  }
}