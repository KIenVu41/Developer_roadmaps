import './person.dart';

// giới hạn các lớp là con của Person mới được sử dụng
mixin Music on Person {
  String type = 'POP';

  void play();

  void logMusic() {
    print('Music');
  }
}
