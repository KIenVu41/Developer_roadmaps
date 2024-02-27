void main() {
  // Optional Variables
  // String/int/bool and null

  // non-null
  String someValue = '';
  int some = 1;

  // nullable
  String? someValue1 = null;

  final a = null;
  final b = null;
  // now a & b are dynamic?

  // sound null safety
  // if null then print null, if not null then print length
  print(someValue1?.length);

  // assert not null throw runtime exception if null
  print(someValue1!.length);

  // null aware operator: default ?? return default value if left side is null
  print(someValue1?.length ?? 0);
}