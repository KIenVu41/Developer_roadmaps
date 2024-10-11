const myButton = document.getElementById("myButton");
const myH1 = document.getElementById("myH1");

myButton.addEventListener("click", event => {
    if (myH1.style.display === "hidden") {
        myH1.style.display = "visible";
        myButton.textContent = "Hide";
    } else {
        myH1.style.display = "hidden";
        myButton.textContent = "Show";
    }
})