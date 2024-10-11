// IF STATEMENTS = if a condition is true, execute some code
//                  if not, do something else

let age = 25;

if (age >= 18) {
    console.log("You are old enough to enter this site");
} else {
    console.log("You must be 18+ to enter this site");
}

let time = 9;

if (time < 12) {
    console.log("Good morning!");
} else {
    console.log("Good afternoon!");
}

let isStudent = false;

if (isStudent) {
    console.log("You are a student!");
} else {
    console.log("You are NOT a student!");
}

let hasLicense = true;

if (age >= 16) {
    console.log("You are old enough to drive");
    if (hasLicense) {
        console.log("You have your license!");
    } else {
        console.log("You do not have your license yet!");
    }
} else {
    console.log("You must be 16+ to have a license");
}

if(age >= 100) {
    console.log("You are to old to enter this site");
} else if (age >= 18) {
    console.log("You are old enough to enter this site");
} else if(age < 0) {
    console.log("Your age can't be below 0");
} else {
    console.log("You must be 18+ to enter this site");
}