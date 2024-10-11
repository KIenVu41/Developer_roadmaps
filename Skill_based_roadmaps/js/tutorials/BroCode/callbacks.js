/*
    callback = a function that is passed as an argument
                to another function.
                used to handle asynchronous operation:
                1. Reading a file
                2. Network requests
                3. Interacting with databases
*/

// hello(goodbye);

// function hello(callback) {
//   console.log("Hello");
//   callback();
// }

// function goodbye() {
//   console.log("Goodbye");
// }

// function leave() {
//   console.log("Leave");
// }

// function wait() {
//   console.log("Wait");
// }

sum(displayConsole, 2, 3);

function sum(callback, x, y) {
  let result = x + y;
  callback(result);
}

function displayConsole(result) {
  console.log(result);
}
