/*
    super = keyword is used in classes to call the constructor or
            access the properties and methods of a parent (superclass)
            this = this object
            super = the parent
*/

class Animal {
    constructor(name, age) {
        this.name = name;
        this.age = age;
    }
}

class Rabbit extends Animal {
   constructor(name, age, runSpeed) {
        super(name, age);
        this.runSpeed = runSpeed;
   }
}

class Fish extends Animal {
    constructor(name, age, swimSpeed) {
        super(name, age);
        this.swimSpeed = swimSpeed;
   }
}

const rabbit = new Rabbit("Bunny", 1, 25);
const fish = new Rabbit("Fishy", 2, 12);