// type conversion = change the datatype of a value to another (strings, numbers, booleans)

let age = window.prompt("How old are you?");

age = Number(age);

console.log(age, typeof age);

let x = "pizza";
let y = "pizza";
let z = "pizza";

x = Number(x);
y = String(y);
z = Boolean(z);

console.log(x, typeof x); // NaN 'number
console.log(y, typeof y); // pizza string
console.log(z, typeof z); // true 'boolean'
