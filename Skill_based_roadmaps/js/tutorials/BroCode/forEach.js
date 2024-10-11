/*
    forEach() = method used to iterate over the elementes
                of an array and apply a specified function (callback)
                to each element

                array.forEach(callback)
*/

let numbers = [1, 2, 3, 4, 5];

numbers.forEach(display);
numbers.forEach(double);

function display(element) {
  console.log(element);
}

function double(element, index, array) {
  array[index] = element * 2;
}

function square(element, index, array) {
  array[index] = Math.pow(element, 2);
}

let fruits = ["apple", "orange", "banana", "coconut"];

fruits.forEach(upperCase);

function upperCase(element, index, array) {
  array[index] = element.toUpperCase();
}
