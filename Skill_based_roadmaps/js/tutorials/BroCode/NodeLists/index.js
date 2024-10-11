/*
    NodeList = Static collection of HTML elements by (id, class, element)
                Can be created by using querySelectorAll()
                Similar to an array, but no (map, filter, reduce)
                NodeList won't update to automatically reflect changes
*/

let buttons = document.querySelectorAll(".myButtons");


// ADD HTML/CSS PROPERTIES

buttons.forEach(element => {
    element.style.backgroundColor = "green";
    element.textContent += "Green";
})

// CLICK EVENT LISTENER

buttons.forEach(button => {
    button.addEventListener("click", event => {
        event.target.style.backgroundColor = "tomato";
    })
})

// MOUSEOVER + MOUSEOUT EVENT

buttons.forEach(button => {
    button.addEventListener("mouseover", event => {
        event.target.style.backgroundColor = "tomato";
    })
})

buttons.forEach(button => {
    button.addEventListener("mouseout", event => {
        event.target.style.backgroundColor = "yellow";
    })
})

// ADD ELEMENT
const newButton = document.createElement("button");
newButton.textContent = "Button 5";
newButton.classList = "myButtons";

document.body.appendChild(button5);

// REMOVE ELEMENT
buttons.forEach(button => {
    button.addEventListener("click", event => {
        event.target.remove();
    })
})