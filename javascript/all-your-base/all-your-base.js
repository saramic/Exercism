//
// This is only a SKELETON file for the 'All Your Base' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const convert = (numbers, fromBase, toBase) => {
  argumetsAreValid(numbers, fromBase, toBase);

  if (numbers.length === 1 && numbers[0] === 0) return numbers;

  const number = convertToDecimal(numbers, fromBase);

  return convertToBase(number, toBase);
};

const argumetsAreValid = (numbers, fromBase, toBase) => {
  if (fromBase < 2) throw new Error("Wrong input base");
  if (toBase < 2) throw new Error("Wrong output base");
  if (numbers.length === 0) throw new Error("Input has wrong format");
  if (numbers.length > 1 && numbers[0] === 0)
    throw new Error("Input has wrong format");
  if (numbers.filter((e) => e < 0).length > 0)
    throw new Error("Input has wrong format");
  if (numbers.filter((e) => e >= fromBase).length > 0)
    throw new Error("Input has wrong format");
};

const sum = (prev, current) => prev + current;

const convertToDecimal = (numbers, fromBase) =>
  numbers
    .map(
      (digit, index) => digit * Math.pow(fromBase, numbers.length - index - 1)
    )
    .reduce(sum);

const convertToBase = (number, toBase) => {
  let outNumbers = [];
  let cummulative = 0;
  while (cummulative < number) {
    const baseMultiplier = Math.pow(toBase, outNumbers.length);
    const currentDigit = ((number - cummulative) / baseMultiplier) % toBase;
    cummulative += currentDigit * baseMultiplier;
    outNumbers.push(currentDigit);
  }
  return outNumbers.reverse();
};
