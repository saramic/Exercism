pub fn is_armstrong_number(num: u32) -> bool {
    let length = num.to_string().chars().collect::<Vec<char>>().len() as u32;
    if length == 1 {
        return true;
    }
    num.to_string()
        .chars()
        .map(|a| a.to_digit(10).unwrap().pow(length))
        .fold(0, |sum, val| sum + val)
        == num
}
