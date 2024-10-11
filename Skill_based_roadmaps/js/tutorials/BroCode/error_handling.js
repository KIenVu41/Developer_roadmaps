/*
    Error = An Object that is created to represent a problem that occurs
            Occur often with user input or establishing a connection

    try {} = Encloses code that might potentially cause an error
    catch {} = Catch and handle any thrown Erros from try {}
    finally {} = (optional) Always executes. Used mostly for clean up
            ex. close files, close connections, release resources
*/

try {
  console.log(x);
  //  NETWORK ERRORS
  // PROMISS REJECTION
  // SECURITY ERRORS
} catch (e) {
  console.log(e);
} finally {
  // CLOSE FILES
  // CLOSE CONNECTIONS
  // RELEASE RESOURCES
}

//====

try {
  const dividend = Number(window.prompt("Enter a dividend: "));
  const divisor = Number(window.prompt("Enter a divisor: "));

  if (divisor == 0) {
    throw new Error("You cant divide by zero!");
  }
  if (isNaN(dividend) || isNaN(divisor)) {
    throw new Error("Values must be a number!");
  }
  const result = dividend / divisor;
  console.lag(result);
} catch (e) {
  console.log(e);
}

console.log("The end");
