/*
    map() = accepts a callback and applies that function
            to each element of an array, then return a new array
*/

const numbers = [1, 2, 3, 4, 5];

numbers.map(square);
const cubes = numbers.map(cube);

function square(element) {
  return Math.pow(element, 2);
}

function cube(element) {
  return Math.pow(element, 3);
}

const students = ["Abc", "Bcd", "Cdf", "Dfj"];

students.map(upperCase);

function upperCase(element) {
  return element.toUpperCase();
}

const dates = ["2024-1-10", "2025-2-20", "2026-3-30"];

const formattedDates = dates.map(formatDates);

function formatDates(element) {
  const parts = element.split("-");
  return `${parts[1]}/${parts[2]}/${parts[3]}}`;
}
