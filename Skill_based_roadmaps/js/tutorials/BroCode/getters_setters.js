/*
    gettter = special method that makes a property readable
    setter = special method that makes a property writeable

    validate and modify a value when reading/writing a property
*/

class Rectangle {
  constructor(width, height) {
    this.width = width;
    this.height = height;
  }

  set width(newWidth) {
    if (newWidth > 0) {
      // private property
      this._width = newWidth;
    } else {
      console.error("Width must be a positive number");
    }
  }

  set height(newHeight) {
    if (newWidth > 0) {
      // private property
      this._height = newHeight;
    } else {
      console.error("Height must be a positive number");
    }
  }

  get width() {
    return this._width;
  }

  get height() {
    return this._height;
  }

  get area() {
    return this._width * this._height;
  }
}

const rectangle = new Rectangle(-1000, "pizza");
rectangle.width = 1000;
rectangle.height = 6;

console.log(`Width ${rectangle.width} - Height ${rectangle.height}`);
console.log(rectangle.area);

//=====

class Person {
  constructor(firstName, lastName, age) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.age = age;
  }

  set firstName(newFirstName) {
    if (typeof newFirstName === "string" && newFirstName.length > 0) {
      this._firstName = newFirstName;
    }
  }

  set lastName(newLastName) {
    if (typeof newLastName === "string" && newLastName.length > 0) {
      this._lastName = newLastName;
    }
  }

  set age(newAge) {
    if (typeof newAge === "number" && newAge >= 0) {
      this._age = newAge;
    }
  }

  get firstName() {
    return this._firstName;
  }

  get lastName() {
    return this._lastName;
  }

  get fullName() {
    return `${this._firstName} ${this._lastName}`;
  }

  get age() {
    return this._age;
  }
}

const person = new Person(420, 69, "AAA");

person.firstName = "Kevin";
person.lastName = "Vu";
person.age = 24;
consolel.log(person.fullName);
