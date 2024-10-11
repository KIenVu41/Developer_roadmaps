/*
    ES6 module = An external file that contains reusable code
                that can be imported into other JS files.
                Write resusable code for many different app.    
                Can contain variables, classes, functions, ... and more.
                Introduced as part of ECMAScript 2015 update
*/

import { PI, getCircumference, getArea, getVolume } from "./mathUtil.js";

console.log(PI);
const circumference = getCircumference(10).toFixed(2);
const area = getArea(10);
const volume = getVolume(10);
