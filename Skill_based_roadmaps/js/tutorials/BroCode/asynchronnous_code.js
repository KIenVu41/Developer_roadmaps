/*
    synchronous = Executes line by line consecutively in a sequential manner
        Code that waits for an operation to complete.

    asynchronous = Allows multiple operations to be performed concurrently without
            waiting. Doesn't block the execution flow and allows the program to continue
            (I/O operations, network, requests, fetching data)
            Handle with: Callbacks, Promises, Async/Await
*/

function func1(callback) {
  setTimeout(() => {
    callback();
  }, timeout);
}

function func2() {
  console.log("Task 2");
  console.log("Task 3");
  console.log("Task 4");
  console.log("Task 5");
}

func1(func2);
