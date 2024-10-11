/* 
    Promise = An Object that manages asynchronous operations.
            Wrap a Promise Object around {async}
            "I promise to return a value"
            PENDING -> RESOLVED or REJECTED
            new Promise((resolve, reject) => {asynchronouse code})
*/

function walkDog() {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            const dogWalked = true;
            if (dogWalked) {
                resolve("Done 1");
            } else {
                reject("You didn't walk the dog");
            }
        }, 1500);
    });
}

function cleanKitchen() {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            resolve("Done 2");
            callback();
        }, 2500);
    });
}

function takeOutTrash() {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            resolve("Done 3");
        }, 500);
    });
}

// walkDog(() => {
//     cleanKitchen(() => {
//         takeOutTrash(() => console.log("Done everything"));
//     })
// })

walkDog().then(value => {
    console.log(value);
    return cleanKitchen().then(
        value => {
            console.log(value);
            return takeOutTrash().then(
                value => {
                    console.log(value);
                    console.log("Finish");
                }
            )
        }
    )
}).catch(
    error => console.log(error)
);