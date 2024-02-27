void main() {
  void func() {
    print('Hello');
  }
  func();
  print(printName());
  // int name2 = printName2(); // runtime error
  final name3 = printName2(); 
  // const name4 = printName(); // error: functions are not constant value
  print(name3);
}

String printName() {
  return 'KV';
}

// dynamic return type
printName2() {
  return 'kv';
}
/*
<datatype> funcName() {}
* */