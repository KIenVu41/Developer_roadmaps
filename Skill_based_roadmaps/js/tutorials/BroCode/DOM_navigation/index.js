/*
    DOM Navigation = The process of navigating through the structure
                    of and HTML document using JS.

    .firstElementChild
    .lastElementChild
    .nextElementSibling
    .previousElementSibling
    .parentElement
    .children
*/

// ------------- firstElementChild
// const element = document.getElementById("fruits");
// const firstChild = element.firstElementChild;
// firstChild.style.backgroundColor = "yellow";

// const ulElements = document.querySelectorAll("ul");

// ulElements.forEach(ulElement => {
//     const firstChild = ulElement.firstElementChild;
//     firstChild.style.backgroundColor = "yellow";
// })

// --------------- lastElementChild

// const element = document.getElementById("fruits");
// const lastChild = document.lastElementChild;
// lastChild.style.backgroundColor = "yellow";

// const ulElements = document.querySelectorAll("ul");

// ulElements.forEach(element => {
//     const lastChild = element.lastElementChild;
//     lastChild.style.backgroundColor = "yellow";
// })

// --------------- nextElementSibling

// const element = document.getElementById("apple");
// const nextSibling = element.nextElementSibling;
// nextSibling.style.backgroundColor = "yellow";

// --------------- previousElementSibling

// const element = document.getElementById("orange");
// const nextSibling = element.previousElementSibling;
// nextSibling.style.backgroundColor = "yellow";

// --------------- parentElement

// const element = document.getElementById("apple");
// const parent = element.parentElement; // <- fruits
// parent.style.backgroundColor = "yellow";

// --------------- children

const element = document.getElementById("fruits");
const parent = element.children // <- HTML collection

Array.from(children).forEach(child => {
    child.style.backgroundColor = "yellow";
})
