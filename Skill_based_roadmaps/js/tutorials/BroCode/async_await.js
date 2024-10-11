/*
    Async/Await = Async - makes a function return a promise
                  Await - makes an async function wait for a promise

                  Allows you write asynchronous code in a synchronous manner
                  Async doesn't have resolve or reject parameters
                  Everything after Await is placed in an event queue
*/

async function walkDog() {
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


async function doChores() {
    try {
        const walDogResult = await walkDog();
        console.log(walDogResult);
    
        const cleanKitchenResult = await cleanKitchen();
        console.log(cleanKitchenResult);
    
        const takeOutTrashResult = await takeOutTrash();
        console.log(takeOutTrashResult);
    
        console.log("Done everything");
    } catch(error) {
        console.error(error);
    }
}

doChores();