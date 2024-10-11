/*
    arrow functions = a concise way to write function expressions
                    good for simple functions that you use only once
                    (parameters) => some code
*/

const hello = (name) => console.log(`Hello ${name}`);
const display = (name, age) => {
  console.log(`Hello ${name}`);
  console.log(`You are ${age} years old`);
};

hello("Kevin");

setTimeout(() => console.log("Hello"), 3000);

const numbers = [1, 2, 3, 4, 5, 6];

const squares = numbers.map((element) => Math.pow(element, 2));
const cubes = numbers.map((e) => Math.pow(e, 3));
const evenNums = numbers.filter((e) => e % 2 === 0);
const oddNums = numbers.filter((e) => e % 2 !== 0);
const total = numbers.reduce((accumulator, e) => accumulator + e);
