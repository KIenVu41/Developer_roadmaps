// ------------------------ EXAMPLE 1 <H1> ---------------------

// STEP 1 CREATE THE ELEMENT
const newH1 = document.createElement("h1");

// STEP 2 ADD ATTRIBUTES/PROPERTIES
newH1.textContent = "I like pizza";
newH1.id = "myH1";
newH1.style.color = "tomato";
newH1.style.textAlign = "center";

// STEP 3 APPEND ELEMENT TO DOM
document.body.append(newH1); // ending
//document.prepend(newH1); // begining
// document.getElementById("box1").append(newH1);

// const box2 = document.getElementById("box2");
// document.body.insertBefore(newH1, box2);

// REMOVE HTML ELEMENT
document.body.removeChild(newH1);