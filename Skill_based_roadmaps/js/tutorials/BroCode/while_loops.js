// while loop = repeat some code WHILE some condition is true

// let username = "";

// while (username === "" || username === null) {
//     username = window.prompt("Enter your name");
// }

// let username;

// do {
//     username = window.prompt("Enter your name");
// } while (username === "" || username === null);

// console.log(`Hello ${username}`);

let loggedIn = false;
let username;
let password;

while (!loggedIn) {
    username = window.prompt("Enter your username");
    password = window.prompt("Enter your password");

    if (user === "myUsername" && password === "myPassword") {
        loggedIn = true;
    }
}