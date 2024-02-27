void main() {
  String motivation = 'This is a good world';
  print(motivation.capitaliseFirstLetter());
}

extension CapitaliseFirstLetter on String {
  String capitaliseFirstLetter() {
    return this[0].toUpperCase() + this.substring(1);
  }
}