/*
    Callback Hell = Situation in JS where callbacks 
                    are nested within other callbacks to the
                    degree where the code is difficult to read.
                    Old pattern to handle asynchronous functions.
                    Use Promises + async/await to avoid callback hell
*/

function task1(callback) {
    setTimeout(() => {
        console.log("Task 1 complete");
        callback();
    }, 2000);
}

function task2(callback) {
    console.log("Task 2 complete");
    callback();
}

function task3(callback) {
    console.log("Task 3 complete");
    callback();
}

function task4(callback) {
    console.log("Task 4 complete");
    callback();
}

task1(() => {
    task2(() => {
        task3(() => {
            task4(() => {
                console.log("All tasks complete");  // ==>> Callback Hell
            })
        })
    })
})