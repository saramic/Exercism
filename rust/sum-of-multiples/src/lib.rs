pub fn sum_of_multiples(limit: u32, factors: &[u32]) -> u32 {
    (1..limit)
        .filter(|a| {
            factors
                .iter()
                .filter(|x| **x != 0)
                .map(|i| a % i == 0)
                .fold(false, |a, b| a || b)
        })
        .fold(0, |a, b| a + b)
}
