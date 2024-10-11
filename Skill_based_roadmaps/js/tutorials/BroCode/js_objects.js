/* 
    object = A collection of related properties and/or methods
    can represent real word objects (people, products, places)
    object = {key: value,
            function()}
*/

const person1 = {
  firstName: "Kevin",
  lastName: "Vu",
  age: 24,
  isEmployed: true,
  sayHello: () => console.log(`Hello ${firstName}`),
  eat: () => console.log("I am eating a pizza"),
};

console.log(person1.firstName);
person1.sayHello();
