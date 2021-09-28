pub fn raindrops(n: u32) -> String {
    // matching

    // match (n % 3, n % 5, n % 7) {
    //     (0, 0, 0) => "PlingPlangPlong".to_string(),
    //     (0, _, 0) => "PlingPlong".to_string(),
    //     (0, 0, _) => "PlingPlang".to_string(),
    //     (_, 0, 0) => "PlangPlong".to_string(),
    //     (0, _, _) => "Pling".to_string(),
    //     (_, 0, _) => "Plang".to_string(),
    //     (_, _, 0) => "Plong".to_string(),
    //     _ => n.to_string(),
    // }

    // fold
    let sound = [(3, "Pling"), (5, "Plang"), (7, "Plong")].iter().fold(
        String::from(""),
        |sound, (key, value)| match n % key {
            0 => sound + *value,
            _ => sound,
        },
    );
    if sound == "" {
        n.to_string()
    } else {
        sound
    }
}
