/*
    reduce() = reduce the elements of an array to a single value
*/

const prices = [123, 13324, 1213, 1274, 112];

const total = prices.reduce(sum);

function sum(accumulator, element) {
  return accumulator + element;
}

const grades = [73, 24, 69, 80, 54, 65];

const maximum = grades.reduce(getMax);

function getMax(accumulator, element) {
  return Math.max(accumulator, element);
}
