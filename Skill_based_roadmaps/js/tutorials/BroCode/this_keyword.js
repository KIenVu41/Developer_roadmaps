/* 
    this = reference to the object where THIS is used
            {the object depends on the immediate context} (not work with arrow function)
            person.name = this.name
*/

const person1 = {
  name: "Kevin",
  favFood: "pizza",
  sayHello: function () {
    console.log(`Hi! i am ${this.name}`);
  },
  eat: function () {
    console.log(`I am eating ${this.favFood}`);
  },
};
