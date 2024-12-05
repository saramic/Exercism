const NUMBER_OF_DIE = 4;
const SIDES_ON_DIE = 6;
const NUMBER_OF_DICE_USED = 3;
const MIN_DICE_SCORE = NUMBER_OF_DICE_USED;
const MAX_DICE_SCORE = NUMBER_OF_DICE_USED * SIDES_ON_DIE;

const tooLowError = new Error(
  `Ability scores must be at least ${MIN_DICE_SCORE}`
);
const tooHightError = new Error(
  `Ability scores can be at most ${MAX_DICE_SCORE}`
);
// guard
const validLow = (value) => {
  if (value >= MIN_DICE_SCORE) return true;
  throw tooLowError;
};
// vs IIFE
const validHigh = (value) =>
  value > MAX_DICE_SCORE
    ? (() => {
        throw tooHightError;
      })()
    : true;

export const abilityModifier = (constitution) =>
  validLow(constitution) &&
  validHigh(constitution) &&
  Math.floor((constitution - 10) / 2);

const forAllDie = () => [...Array(NUMBER_OF_DIE)];
const roll = () => Math.floor(Math.random() * SIDES_ON_DIE) + 1;
const sum = (value, acc) => acc + value;
const highestToLowest = (a, b) => b - a;

export class Character {
  static rollAbility = () =>
    forAllDie()
      .map(roll)
      .sort(highestToLowest)
      .slice(0, NUMBER_OF_DICE_USED)
      .reduce(sum);

  strength = Character.rollAbility();
  dexterity = Character.rollAbility();
  constitution = Character.rollAbility();
  intelligence = Character.rollAbility();
  wisdom = Character.rollAbility();
  charisma = Character.rollAbility();

  hitpoints = 10 + abilityModifier(this.constitution);
}
