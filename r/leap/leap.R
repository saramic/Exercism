leap <- function(year) {
  divisible_by(year, 4) &&
    (
      divisible_by(year, 400) ||
      !divisible_by(year, 100)
    )
}

divisible_by <- function(year, number) {
  year %% number == 0
}

