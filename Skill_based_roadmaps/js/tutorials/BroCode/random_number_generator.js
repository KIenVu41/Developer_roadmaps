// RANDOM NUMBER GENERATOR
// Math.random(): Returns a pseudorandom number between 0 and 1

let randomNumber = Math.floor(Math.random() * 6) + 1; // 1 to 6

const min = 50;
const max = 100;

let random = Math.floor(Math.random() * (max - min)) + min; // min to max
