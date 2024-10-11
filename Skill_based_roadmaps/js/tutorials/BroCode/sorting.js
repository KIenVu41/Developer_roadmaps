/*
    sort() = method used to sort elements of an array in place.
            Sorts elements as strings in lexicographic order,
            not alphabetical
            lexicographic = (alphabet + numbers + symbold) as strings
*/

let fruits = ["apple", "orange", "banana", "coconut", "pineapple"];
fruits.sort();

let numbers = [1, 10, 2, 5, 9, 3];
numbers.sort((a, b) => a - b); // desc b - a

const people = [
  { name: "Kevin", age: 30, gpa: 3.0 },
  { name: "Patrick", age: 32, gpa: 4.0 },
  { name: "Tom", age: 29, gpa: 3.2 },
  { name: "Ash", age: 25, gpa: 2.5 },
];

people.sort((a, b) => a.age - b.age);
people.sort((a, b) => a.name.localeCompare(b.name));
