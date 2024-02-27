String globalName = 'KV'; // global var

void main() {
  printName2(globalName);
  printName(globalName);
}

// require parameter
void printName(String name) {
  print(name);
}

void printName2(String globalName) {
  // not affect the value of passing argument
  globalName = 'KTV';
  print(globalName);
}

