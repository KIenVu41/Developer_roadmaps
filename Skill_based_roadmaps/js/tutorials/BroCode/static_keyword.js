/*
    static = keyword that defines properties or methods that belong
            to a class itself rather than the object created
            from that class (class owns anything static, not the objects)
*/

class MathUtil {
  static PI = 3.14159;

  static getDiameter(radius) {
    return radius * 2;
  }

  static getCircumference(radius) {
    return 2 * this.PI * radius;
  }

  static getArea(radius) {
    return this.PI * Math.pow(radius, 2);
  }
}

console.log(MathUtil.PI);
console.log(MathUtil.getDiameter(10));

class User {
  static userCount = 0;

  constructor(username) {
    this.username = username;
    User.userCount++;
  }

  sayHello() {
    console.log(`Hello, my username is ${this.username}`);
  }

  static getUserCount() {
    console.log(`There are ${User.userCount} users online`);
  }
}

const user1 = new User("Kevin");
const user2 = new User("Patrick");
const user3 = new User("Bob");

console.log(User.userCount);
user1.sayHello();
user2.sayHello();
user3.sayHello();

User.getUserCount();
