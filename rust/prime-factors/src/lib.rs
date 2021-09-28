pub fn factors(n: u64) -> Vec<u64> {
    let mut factor_array = vec![];
    let mut number = n;
    let mut prime_candidate: u64 = 2;
    while number >= prime_candidate.pow(2) {
        if number.rem_euclid(prime_candidate) == 0 {
            factor_array.push(prime_candidate);
            number = number / prime_candidate;
        } else {
            prime_candidate = prime_candidate + 1;
        }
    }
    if number > 1 {
        factor_array.push(number);
    }
    factor_array
}
