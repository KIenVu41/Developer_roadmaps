/*
    variable scope = where a variable is recognized and accessible (local vs global)
*/

let y = 2; // global scope

function function1() {
    let x = 1; // local scope
    console.log(x);
    console.log(y);
}

function function2() {
    let x = 2;
    console.log(x);
}

function function3() {
    let x = 3;
    console.log(x); // x = 3
}