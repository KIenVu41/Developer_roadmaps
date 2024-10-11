/*
    string slicing = creating a substring from a portion of another string
    string.slice(start, end);
*/

const fullName = "Kevin Vu";

// let firstName = fullName.slice(0, 5);
// let lastName = fullName.slice(6);

// let firstChar = fullName.slice(0, 1);
// let lastChar = fullName.slice(fullName.length - 1); // or -1

let firstName = fullName.slice(0, fullName.indexOf(" "));
let lastName = fullName.slice(fullName.indexOf(" ") + 1);

const email = "KevinVu20@gmail.com";

let username = email.slice(0, email.indexOf("@"));
let extension = email.slice(email.indexOf("@") + 1);