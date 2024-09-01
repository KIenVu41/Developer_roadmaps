class User {
  int id = 0;
  String name = '';

  User(this.id, this.name);
}

extension MyExtension on User {
  void logExtension() {
    print('log extension');
  }
}
