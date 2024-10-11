/*
    class = (ES6 feature) provides a more structured and cleaner way to 
            work with objects compared to traditional constructor functions
            ex. static keyword, encapsulation, inheritance
*/

class Product {
  constructor(name, price) {
    this.name = name;
    this.price = price;
  }

  displayProduct() {
    console.log(`Product: ${this.name}`);
    console.log(`Price: ${this.price.toFixed(2)}`);
  }

  calculateTotal(salesTax) {
    return this.price + this.price * salesTax;
  }
}

const salesTax = 0.05;

const product1 = new Product("Shirt", 19.99);
product1.displayProduct();
const total = product1.calculateTotal(salesTax);
console.log(`Total price (with tax): $${total.toFixed(2)}`);
