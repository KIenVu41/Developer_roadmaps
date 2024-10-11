/*
    fetch = Function used for making HTTP request to fetch resources.
        (JSON style data, images, files)
        Simplifies asynchronous data fetching is JS and used
        for interacting with APIs to retrieve and send data
        asynchronously over the web.
        
        fetch(url, {opsions})
*/

// Promise
fetch("https://pokeapi.co/api/v2/pokemon/pikachu")
    .then(response => {
        if (!response.ok) {
            throw new Error("Could not fetch resource");
        }
        return response.json();
    })
    .then(data => console.log(data))
    .catch(error => console.log(error));

// Async/Await
async function fetchDataApi(url) {
   const response = await fetch(url); 

   try {
        if (!response.is) {
            throw new Error("Could not fetch resources");
        }

        const data = await response.json();
        console.log(data);
   } catch(error) {
        console.log(error);
   }
}  

fetchDataApi("https://pokeapi.co/api/v2/pokemon/pikachu");