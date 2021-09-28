//
// This is only a SKELETON file for the "Leap" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Year = function (input) {
  this.year = input
  this.divisible_by = function (number) {
    return this.year % number == 0
  };
};

Year.prototype.isLeap = function () {
  return (this.divisible_by(4) && !this.divisible_by(100))
    || this.divisible_by(400)
};

module.exports = Year;
