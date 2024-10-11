/*
    array = a variable like structure that can hold more than 1 value
*/

let fruits = ["apple", "orange", "banana"];
fruits[0]; // apple
fruits[3]; // undefined

fruits[0] = "coconut";
fruits.push("cherry"); // Appends new elements to the end of an array, and returns the new length of the array.
fruits.pop(); // Removes the last element from an array and returns it. If the array is empty, undefined is returned and the array is not modified.
fruits.unshift("mango"); // Inserts new elements at the start of an array, and returns the new length of the array.
fruits.shift(); // Removes the first element from an array and returns it. If the array is empty, undefined is returned and the array is not modified.

let numOfFruits = fruits.length;
let index = fruits.indexOf("apple"); // Returns the index of the first occurrence of a value in an array, or -1 if it is not present.

// loop
for (let index = 0; index < fruits.length; index++) {
    const item = fruits[index];
}

for (let fruit in fruits) {
    console.log(fruit);
}

// sort
fruits.sort().reverse();