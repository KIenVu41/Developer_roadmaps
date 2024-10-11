// How to accept user input

// 1. EASY WAY = window prompt
// 2. PROFESSIONAL WAY = HTML textbox

let username;

username = window.prompt("What's your username?");

/*
    <input id="myText"><br><br>
    <button id="mySubmit">Submit</button>
*/

document.getElementById("mySubmit").onclick = function () {
  username = document.getElementById("myText").value;
};
