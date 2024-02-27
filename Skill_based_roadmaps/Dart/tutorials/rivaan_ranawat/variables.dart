void main() {
  // Variables
  
  // <datatype> <variableName> = value;
  int firstValue = 23;

  int secondValue = 32;

  print(firstValue);
  print(secondValue);

  double $var1 = 23.3;
  print($var1 * secondValue);

  String $str1 = 'Hello, World';

  bool $bool1 = true;

  dynamic a = 10;
  dynamic b = 12.3;
  dynamic c = false;
  dynamic d = 'hello';

  // dynamic resolve type in runtime
  print('$a $b $c ${d.runtimeType}');

  //resign variable
  firstValue = 100;
  $str1 = 'Hello World' + ' from Dart';

  // String template
  $str1 = '${$str1} yoo';

  // escapte character \
  // multiline string
  $str1 = '''Hello

  World''';

}