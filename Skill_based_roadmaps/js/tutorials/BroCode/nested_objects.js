/*
    nested objects = Objects inside of other objects.
                    Allows you to represent more complex data structures
                    Child Objects is enclosed by a Parent Object

                    Person{Address{}, ContactInfo{}}
*/

const person = {
  fullName: "Kevin Vu",
  age: 24,
  isStudent: false,
  hobbies: ["swim", "footbal", "cooking"],
  address: {
    street: "141 CT St.",
    city: "HN",
    country: "VN",
  },
};

console.log(person.fullName);
console.log(person.hobbies[0]);
console.log(person.address.city);

for (const property in person.address) {
  console.log(person.address[property]);
}

//////

class Address {
  constructor(street, city, country) {
    this.street = street;
    this.city = city;
    this.country = country;
  }
}

class Person {
  constructor(name, age, ...address) {
    this.name = name;
    this.age = age;
    this.address = new Address(...address);
  }
}

const person1 = new Person("Kevin", 24, "124 Ct St.", "HN", "VN");

const person2 = new Person("Patrick", 24, "122 Ct St.", "HN", "VN");

const person3 = new Person("Tony", 22, "123 Ct St.", "HN", "VN");
