const fruits = [
  { name: "apple", color: "red", calories: 95 },
  { name: "orange", color: "orage", calories: 45 },
  { name: "banana", color: "yellow", calories: 195 },
  { name: "coconut", color: "white", calories: 46 },
  { name: "pineapple", color: "yellow", calories: 23 },
];

fruits.push({ name: "grapes", color: "purple", calories: 55 });

// --------------------------- forEach() -----------------

fruits.forEach((fruit) => console.log(fruit.name));

//---------------------------- map() ------------------

const fruitNames = fruits.map((fruit) => fruit.name);

// --------------------------- filter() ---------------

const yellowFruits = fruits.filter((fruit) => fruit.color === "yellow");

// ---------------------------- reduce() --------------------

const maxFruit = fruits.reduce((accumulator, fruit) =>
  Math.max(accumulator, fruit.calories)
);
