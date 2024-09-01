/*
Các cách sử dụng vòng lặp
1. for
2. for in
3. for each
4. while
5. do-while

Câu lệnh nhảy
1. break
2. continue
 */

List<int> numbers = [1, 2, 3, 4, 5];

void main() {
  // for
  for (int i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }

  // for in
  for (int i in numbers) {
    print(i);
  }

  // for each
  numbers.forEach((element) => print(element));

  // while
  int max = 4;
  int test = 1;

  while (test < max) {
    print(test);
    test++;
  }

  // do-while
  do {
    print('Flutter');
    test++;
  } while (test <= max);
}
