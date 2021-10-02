// @ts-check
//
// The line above enables type checking for this file. Various IDEs interpret
// the @ts-check directive. It will give you helpful autocompletion when
// implementing this exercise.

/**
 * Calculates the total bird count.
 *
 * @param {number[]} birdsPerDay
 * @returns {number} total bird count
 */
export function totalBirdCount(birdsPerDay) {
  return birdsPerDay.reduce((prev, curr) => prev + curr);
}

/**
 * Calculates the total number of birds seen in a specific week.
 *
 * @param {number[]} birdsPerDay
 * @param {number} week
 * @returns {number} birds counted in the given week
 */
export function birdsInWeek(birdsPerDay, week) {
  const offset = week - 1;
  return totalBirdCount(birdsPerDay.slice(offset * 7, offset * 7 + 7));
}

/**
 * Fixes the counting mistake by increasing the bird count
 * by one for every second day.
 *
 * @param {number[]} birdsPerDay
 * @returns {number[]} corrected bird count data
 */
export function fixBirdCountLog(birdsPerDay) {
  // not allowed to return a new array???
  // return birdsPerDay.map((day, index) => day + (index % 2 === 0 ? 1 : 0));
  birdsPerDay.forEach(
    (day, index) => (birdsPerDay[index] = day + (index % 2 === 0 ? 1 : 0))
  );
  return birdsPerDay;
}
