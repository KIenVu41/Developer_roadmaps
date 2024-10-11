/*
    filter() = creates a new array by filtering
                out elements
*/

let numbers = [1, 2, 3, 4, 5];
let evenNums = numbers.filter(isEven);

function isEven(element) {
  return element % 2 === 0;
}

function isOdd(element) {
  return element % 2 !== 0;
}

const ages = [16, 17, 18, 18, 19, 20, 60];

const adults = ages.filter(isAdult);

function isAdult(element) {
  return element >= 18;
}

const words = ["apple", "orange", "banana", "kiwi"];

const shortWords = words.filter(getShortWords);

function getShortWords(element) {
  return element.length <= 6;
}
