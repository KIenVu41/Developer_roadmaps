void main() async {
  print('Hello');
  //final result = await giveAResultAfter2Sec();
  //final result2 = await giveAResultAfter3Sec();
  //print(result);
  //print(result2 ?? 'null');
  giveAResultAfter3Sec().then((val) {
    print(val);
  });
  print('Hey');
  print('Ciao');
}

Future<String> giveAResultAfter2Sec() async {
  return 'Hi!';
  /*
  or without async
  return Future(() {
    return 'Hi!';
  });
  */
}

Future<String?> giveAResultAfter3Sec() {
  return Future.delayed(const Duration(seconds: 2), () {
    print('Hey!!!'); // Prints after 1 second.
  });
}