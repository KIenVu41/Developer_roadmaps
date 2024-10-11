/*
    JSON = (JS Object Notation) data-interchange format
            Used for exchanging data between a server and a web application
            JSON files {key: value} OR {value1, value2, value3}

            JSON.stringify() => converts a JS object to a JSON string.
            JSON.parse() => converts a JSON string to a JS object
*/

const names = [
    "Spongebob",
    "Kevin",
    "Patrick",
    "Tony"
];

// const jsonString = JSON.stringify(names);

const person = {
    "name": "Kevin",
    "age": 25,
    "isEmployed": true,
    "hobbies": ["Sing", "Footbal", "Movies"]
};

// const jsonPersonString = JSON.stringify(person);

const people = [
    {
        "name": "Kevin",
        "age": 25,
        "isEmployed": true,
        "hobbies": ["Sing", "Footbal", "Movies"]
    },
    {
        "name": "Spongebob",
        "age": 23,
        "isEmployed": false,
        "hobbies": ["Sing", "Footbal", "Movies"]
    },
    {
        "name": "Tony",
        "age": 22,
        "isEmployed": false,
        "hobbies": ["Sing", "Footbal", "Movies"]
    },
    {
        "name": "Patrick",
        "age": 21,
        "isEmployed": true,
        "hobbies": ["Sing", "Footbal", "Movies"]
    }
];


const jsonNames = `[
    "Spongebob",
    "Kevin",
    "Patrick",
    "Tony"
]`;


const jsonPerson = `{
    "name": "Kevin",
    "age": 25,
    "isEmployed": true,
    "hobbies": ["Sing", "Footbal", "Movies"]
}`;


const jsonPeople = `[
    {
        "name": "Kevin",
        "age": 25,
        "isEmployed": true,
        "hobbies": ["Sing", "Footbal", "Movies"]
    },
    {
        "name": "Spongebob",
        "age": 23,
        "isEmployed": false,
        "hobbies": ["Sing", "Footbal", "Movies"]
    },
    {
        "name": "Tony",
        "age": 22,
        "isEmployed": false,
        "hobbies": ["Sing", "Footbal", "Movies"]
    },
    {
        "name": "Patrick",
        "age": 21,
        "isEmployed": true,
        "hobbies": ["Sing", "Footbal", "Movies"]
    }
]`;

const parsedData = JSON.parse(jsonNames);


// =====

fetch("person.json")
    .then(response => response.json())
    .then(value => console.log(value))
    .catch(error => console.log(error))


