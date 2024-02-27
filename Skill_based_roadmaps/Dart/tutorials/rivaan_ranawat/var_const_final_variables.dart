void main() {
  // var/final/const variableName = value;

  // mutable can change value after it's set
  var someValue1 = 10;
  //someValue = '10'; error
  // immutable cant change value after its set
  final someValue2 = 10;
  const someValue3 = 10; 
  print(someValue1);
  print(someValue2);
  print(someValue3);

  print('--------------');
  someValue1 = 100;
  // someValue2 = 100; final variables can only set once
  // someValue3 = 100; constant variables cant be assigned a value

  final date1 = DateTime.now(); // final is a runtime constant
  //const date2 = DateTime.now(); // error: DateTime.now() is runtime value, const is a compile time constant
}