pub fn nth(n: u32) -> u32 {
    // TODO: should be able to use array as we know the length at the beginning
    // let sieve: [u32; n + 1] = [2; n + 1];

    let mut sieve = vec![2];
    let mut index = sieve.last().copied().unwrap();
    while sieve.len() <= ((n as usize) + 1) {
        index = index + 1;
        if sieve.iter().find(|&prime| index % prime == 0) == None {
            sieve.push(index);
        };
    }

    sieve[n as usize]
}
