/*
    setTimeout() = function in JS that allows you to schedule
                the execution of a function after an amount of time (ms)
                Times are approximate (varies based on the workload of the JS runtime env)

                setTimeout(callback, delay);

                clearTimeout(timeoutId) = can cancel a timeout before it triggers
*/

function sayHello() {
    window.alert("Hello");
}

const timedoutId = setTimeout(sayHello, 3000);

clearTimeout(timedoutId);

setTimeout(() => {
    window.alert("Hello");
}, 3000);