/*
    element selectors = Methods used to target and manipulate HTML elements
                    They allow you to select one or multiple HTML elements
                    from the DOM
    
    1. document.getElementById()        // Element or null
    2. document.getElementsClassName()  // HTML collection
    3. document.getElementsByTagName()  // HTML collection
    4. document.querySelector()         // First element or null
    5. document.querySelectorAll()      // Nodelist (has built-in func)
*/

const myHeading = document.getElementById("my-heading");
myHeading.style.backgroundColor = "yellow";
myHeading.style.textAlign = "center";

const fruits = document.getElementsByClassName("fruits");
// fruits[0].style.backgroundColor = "yellow";
// fruits[1].style.backgroundColor = "yellow";
// fruits[2].style.backgroundColor = "yellow";

for (let fruit of fruits) {
  fruit.style.backgroundColor = "yellow";
}

Array.from(fruits).forEach((fruit) => {
  fruit.style.backgroundColor = "yellow";
}); // casting to array to use forEach

const h4Elements = document.getElementsByTagName("h4");
h4Elements[0].style.backgroundColor = "yellow";
h4Elements[1].style.backgroundColor = "yellow";

for (let h4Element of h4Elements) {
  h4Element.style.backgroundColor = "yellow";
}

const liElements = document.getElementsByTagName("li");
for (let liElement of liElements) {
  liElement.style.backgroundColor = "lightgreen";
}

const element = document.querySelector(".fruits");

const fruits2 = document.querySelectorAll(".fruits");
fruits2[0].style.backgroundColor = "yellow";

const foods = document.querySelectorAll("li");

foods.forEach((food) => {
  food.style.backgroundColor = "yellow";
});
