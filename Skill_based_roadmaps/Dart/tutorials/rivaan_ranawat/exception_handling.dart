void main() {
  try {
    print(10/2);
  } on Exception catch (e) {
    print(e);
  } catch (e) {
    print('An error occurred');
  } finally {
    print('Finally block');
  }

  print('Finished.');
}