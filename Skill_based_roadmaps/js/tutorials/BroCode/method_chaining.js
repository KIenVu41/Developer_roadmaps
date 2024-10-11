// Method Chaining = Calling one method after another
//                    in one continous line of code.

// ----------- NO METHOD CHAINING ------------
let username = window.prompt("Enter your username:");
username = username.trim();
let letter = username.charAt(0);
letter = letter.toUpperCase();

let extraChars = username.slice(1);
extraChars = extraChars.toLowerCase();

username = letter + extraChars;

//------------ METHOD CHAINING ---------------
username = username.trim().charAt(0).toUpperCase() + username.trim().slice(1).toLowerCase();