/*
    spread operator = ... allows an iterable such as an
                    array of string to be expanded
                    into seperate elements
                    (unpacks the elements)
*/

let numbers = [1, 2, 3, 4, 5];
let maximum = Math.max(...numbers);

let username = "Kevin";
let letters = [...username];

let fruits = ["apple", "orange", "banana"];
let vegetables = ["carrots", "celery"];
let food = [...fruits, ...vegetables, "eggs", "milk"];