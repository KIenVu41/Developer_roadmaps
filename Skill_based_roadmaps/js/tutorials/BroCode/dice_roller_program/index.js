// DICE ROLLER PROGRAM

function rollDice() {
  const numOfDice = document.getElementById("numOfDice").value;
  const diceResult = document.getElementById("diceResult");
  const values = [];

  for (let index = 0; index < numOfDice; index++) {
    const value = Math.floor(Math.random() * 6) + 1;
    values.push(value);
  }

  diceResult.textContent = `dice: ${values.join(",")}`;
}
