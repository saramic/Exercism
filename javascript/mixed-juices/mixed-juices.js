// @ts-check
//
// The line above enables type checking for this file. Various IDEs interpret
// the @ts-check directive. It will give you helpful autocompletion when
// implementing this exercise.

/**
 * Determines how long it takes to prepare a certain juice.
 *
 * @param {string} name
 * @returns {number} time in minutes
 */
export function timeToMixJuice(name) {
  const timing = {
    "Pure Strawberry Joy": 0.5,
    Energizer: 1.5,
    "Green Garden": 1.5,
    "Tropical Island": 3,
    "All or Nothing": 5,
  };
  const defaultTiming = 2.5;
  return timing[name] || defaultTiming;
}

/**
 * Calculates the number of limes that need to be cut
 * to reach a certain supply.
 *
 * @param {number} wedgesNeeded
 * @param {string[]} limes
 * @returns {number} number of limes cut
 */
export function limesToCut(wedgesNeeded, limes) {
  const wedgesPerLime = {
    small: 6,
    medium: 8,
    large: 10,
  };
  const limeWedges = limes.map((lime) => wedgesPerLime[lime]);
  let wedgesCut = 0;
  let limeCount = 0;
  while (wedgesCut < wedgesNeeded) {
    wedgesCut += limeWedges[limeCount];
    if (limes.length > limeCount) limeCount++;
  }
  return limeCount;
}

/**
 * Determines which juices still need to be prepared after the end of the shift.
 *
 * @param {number} timeLeft
 * @param {string[]} orders
 * @returns {string[]} remaining orders after the time is up
 */
export function remainingOrders(timeLeft, orders) {
  return orders.filter((order) => {
    if (timeLeft > 0) {
      timeLeft = timeLeft - timeToMixJuice(order);
      return false;
    } else {
      return true;
    }
  });
}
