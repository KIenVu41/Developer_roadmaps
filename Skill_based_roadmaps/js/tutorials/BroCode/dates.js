/*
    Date objects = Objects that contain values that represent dates and times
                These date objects can be changed and formatted
*/

// Date(year, month, day, hour, minute, second, ms)
const date = new Date(2024, 0, 1, 2, 3, 4, 5);

const date2 = new Date("2024-01-02T12:00:00Z")

// ms
const date3 = new Date(170000000000)

const year = date.getFullYear();
const month = date.getMonth() + 1
const day = date.getDate();
const hour = date.getHours();
const minute = date.getMinutes();
const second = date.getSeconds();
const dayOfWeek = date.getDay();


date.setFullYear(2024);
date.setMonth(0) // Jan
date.setDate(1);
date.setHours(2);
date.setMinutes(3);
date.setSeconds(2);

const date4 = new Date("2024-12-31");
const date5 = new Date("2024-01-01");

if (date5 > date4) {
    console.log("");
}
