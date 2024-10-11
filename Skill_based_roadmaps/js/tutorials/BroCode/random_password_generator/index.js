// RANDOM PASSWORD GENERATOR

const passwordLength = 12;
const includeLowercase = true;
const includeUppercase = true;
const includeNumbers = true;
const includeSymbols = true;

function generatorPassword(
  length,
  includeLowercase,
  includeUppercase,
  includeNumbers,
  includeSymbols
) {
  const lowercaseChars = "abcdefghijklmnopqrstuvwxyz";
  const uppercaseCharts = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  const numberChars = "0123456789";
  const symbolChar = "!@#$%^&*()_+-=";

  let allowedChars = "";
  let password = "";

  allowedChars += includeLowercase ? lowercaseChars : "";
  allowedChars += includeUppercase ? uppercaseCharts : "";
  allowedChars += includeNumbers ? numberChars : "";
  allowedChars += includeSymbols ? symbolChar : "";

  if (length <= 0) {
    return "(password length must be at least 1)";
  }
  if (allowedChars.length === 0) {
    return `(At least 1 set of character need to be selected)`;
  }

  for (let index = 0; index < length; index++) {
    const randomIndex = Math.floor(Math.random() * allowedChars.length);
    password += allowedChars[index];
  }

  return password;
}

const password = generatorPassword(
  passwordLength,
  includeLowercase,
  includeUppercase,
  includeNumbers,
  includeSymbols
);

console.log(`Generated password: ${password}`);
