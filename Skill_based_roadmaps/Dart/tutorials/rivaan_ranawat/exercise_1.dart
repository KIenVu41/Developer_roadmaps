/*
  Exercise:
  Develop a program to calculate the shipping cose based on
  the destination zone and the weight of the package (you will be provided)
  Calculate the shipping cost according to these conditions:
  If the destination zone is 'XYZ', the shipping cose is $5 per kilogram
  If the destination zone is 'ABC', the shipping cose is $7 per kilogram
  If the destination zone is 'PQR', the shipping cose is $10 per kilogram
  If the destination zone is not 'XYZ', ABC', PQR', display an error message
*/

import 'dart:io';

void main() {
  String? choice;
  do {
    print("Enter zone name");
    String? zone = stdin.readLineSync();
    print("Enter weight");
    double? weight = double.parse(stdin.readLineSync() ?? '0');

    double? price = switch (zone) {
      'XYZ' => weight * 5,
      'ABC' => weight * 7,
      'PQR' => weight * 10,
      _ => null
  };

    print(price ?? "Error"); 
    print("Continue??");
    choice = stdin.readLineSync();
  } while (choice != 'n');

}