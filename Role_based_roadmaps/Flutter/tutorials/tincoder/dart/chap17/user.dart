import './person.dart';
import 'football.dart';
import 'music.dart';

class User extends Person with Football, Music {
  int id = 0;
  String name = '';

  User(this.id, this.name) : super(name);

  void logInfo() {
    log();
    logMusic();
    print('$type');
  }

  @override
  void play() {
    print('play music');
  }
}
