/*
    eventListener = Listen for specific events to create interactive web pages
                    events: click, mouseover, mouseout

                    .addEventListener(event, callback);

*/

const myBox = document.getElementById("myBox");

function changeColor(event) {
    event.target.style.backgroundColor = "tomato";
    event.target.textContext = "YELL";
}

myBox.addEventListener("click", changeColor)

myBox.addEventListener("mouseover", event => {
    event.target.style.backgroundColor = "tomato";
    event.target.textContext = "YELL";
})

myBox.addEventListener("mouseout", event => {
    event.target.style.backgroundColor = "tomato";
    event.target.textContext = "YELL";
})