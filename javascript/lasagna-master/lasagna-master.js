/// <reference path="./global.d.ts" />
// @ts-check

/**
 * Implement the functions needed to solve the exercise here.
 * Do not forget to export them so they are available for the
 * tests. Here an example of the syntax as reminder:
 *
 * export function yourFunction(...) {
 *   ...
 * }
 */

export function cookingStatus(time) {
  if (time === 0) return "Lasagna is done.";
  if (time > 0) return "Not done, please wait.";
  return "You forgot to set the timer.";
}

export function preparationTime(layers, time) {
  return layers.length * (time || 2);
}

function layerCount(layers, layer) {
  return layers.filter((needleLayer) => needleLayer === layer).length;
}

export function quantities(layers) {
  return {
    noodles: layerCount(layers, "noodles") * 50,
    sauce: layerCount(layers, "sauce") * 0.2,
  };
}

export function addSecretIngredient(friendList, myList) {
  myList.push(friendList[friendList.length - 1]);
}

export function scaleRecipe(recipe, scale) {
  Object.keys(recipe).forEach(
    (ingredient) => (recipe[ingredient] *= scale / 2)
  );
  return recipe;
}
