/*
    rest parameters = (...rest) allow a function work with a variable
                    number of arguments by building them into an array
                    spread = expands an array into seperate elements
                    rest = bundles seperate elements into an array
*/

const food1 = "pizza";
const food2 = "hamburger";
const food3 = "hotdog";
const food4 = "sushi";

function openFridge(...foods) {
    console.log(...foods);
}

function getFood(...foods) {
    return foods;
}

openFridge(food1, food2, food3, food4);

const foods = getFood(food1, food2, food3, food4);

function sum(...numbers) {
    let result = 0;
    for (let number of numbers) {
        result += number;
    }
    return result;
}

const total = sum(1, 2, 3, 4);