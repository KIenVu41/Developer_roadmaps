/*
    function declaration = define a reusable block of code
                        that performs a specific task

    function expressions = a way to define functions as values or variables
    1. Callback in asynchoronous operations
    2. Higher-Order Functions
    3. Closures
    4. Event Listeners
*/

const hello = function () {
  console.log("Hello");
};

hello();

const numbers = [1, 2, 3, 4, 5, 6];
const squares = numbers.map(function (element) {
  return Math.pow(element, 2);
});
const evenNums = numbers.filter(function (element) {
  return element % 2 == 0;
});
const total = numbers.reduce(function (accmulator, element) {
  return accmulator + element;
});
