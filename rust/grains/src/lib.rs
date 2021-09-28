pub fn square(s: u32) -> u64 {
    if s < 1 || s > 64 {
        panic!("Square must be between 1 and 64");
    }
    (1..s).fold(1_u64, |sum, _val| u64::from(sum) * 2_u64)
}

pub fn total() -> u64 {
    (1..65).fold(0_u64, |sum, val| sum + square(val))
}
