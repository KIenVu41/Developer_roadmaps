/*
    eventListener = Listen for specific events to create interactive web pages
                    events: keydow, keyup

    document.addEventListener(event, callback);
*/


const myBox = document.getElementById("myBox");

document.addEventListener("keydown", event => {
    myBox.textContent = "Down";
    myBox.style.backgroundColor = "tomato";
})

document.addEventListener("keyup", event => {
    myBox.textContent = "Up";
    myBox.style.backgroundColor = "lightgreen";
})

const moveAmount = 100;
let x = 0;
let y = 0;
document.addEventListener("keydown", event => {
    if (event.key.startsWith("Arrow")) {

        event.preventDefault();

        switch (event.key) {
            case "ArrowUp":
                y -= moveAmount;
                break;
            case "ArrowDown":
                y += moveAmount
            case "ArrowLeft":
                x -= moveAmount
            case "ArrowRight":
                x += moveAmount
            default:
                break;
        }

        myBox.style.top = `${y}px`;
        myBox.style.left = `${x}px`;
    }
})