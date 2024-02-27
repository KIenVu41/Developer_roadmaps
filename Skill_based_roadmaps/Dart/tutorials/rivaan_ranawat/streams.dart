import 'dart:async';

void main() {
  //countDown().first.then((value) => print(value));
  countDown().listen((event) {
    print(event);
  }, onDone: () {
    print('Done');
  }, onError: (e) {
    print(e.toString());
  });
}

Stream<int> countDown() async* {
  for (int i = 5; i > 0; i--) {
    yield i;
    await Future.delayed(const Duration(seconds: 1));
  }
}

Stream<int> countPeriodic() {
  final controller = StreamController<int>();
  controller.sink.add(1);
  controller.stream.listen((val) {
    print(val);
  });
  return Stream.periodic(Duration(seconds: 1), (val) {
    return val;
  });
}