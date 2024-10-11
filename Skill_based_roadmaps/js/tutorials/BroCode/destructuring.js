/*
    destructuring = extract values from arrays and objects,
                    then assign them to variables in a convenient way
                    [] = to perfrom array destructuring
                    {} = to perform object destructuring
*/

//========== EXAMPLE 1 ==============
// SWAP THE VALUE OF TWO VARIABLES

let a = 1;
let b = 2;

[a, b] = [b, a];

console.log(a);
console.log(b);

//============ EXAMPLE 2 ===========
// SWAP 2 ELEMENTS IN AN ARRAY
const colors = ["red", "green", "blue"];

[colors[0], colors[4]] = [colors[4], colors[0]];

//============ EXAMPLE 3 ===========
// ASSIGN ARRAY ELEMENTS TO VARIABLES
const colors2 = ["red", "green", "blue", "black"];

const [firstColor, secondColor, thirdColor, ...extraColors] = colors2;

//============ EXAMPLE 4 ==========
// EXTRACT VALUES FROM OBJECTS
const person1 = {
  firstName: "Kevin",
  lastName: "Vu",
  age: 24,
  job: "IT",
};

const person2 = {
  firstName: "Patrick",
  lastName: "Vu",
  age: 24,
};

const { firstName, lastName, age, job = "Unemployed" } = person1;

//=========== EXAMPLE 5 ==========
// DESTRUCTURE IN FUNCTION PARAMETERS

function displayPerson({ fistName, lastName, age, job = "Unemployed" }) {
  console.log(`${fistName} - ${lastName} - ${age}`);
}

const person3 = {
  firstName: "Kevin",
  lastName: "Vu",
  age: 24,
  job: "IT",
};

const person4 = {
  firstName: "Patrick",
  lastName: "Vu",
  age: 24,
};

displayPerson(person1);
