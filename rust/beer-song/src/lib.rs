// Note: seems non trivial
//  https://stackoverflow.com/questions/38406793/why-is-capitalizing-the-first-letter-of-a-string-so-convoluted-in-rust
fn make_ascii_titlecase(mut title_string: String) -> String {
    if let Some(r) = title_string.get_mut(0..1) {
        r.make_ascii_uppercase();
    }
    title_string
}

fn pluralize(number: u32, thing: &str) -> String {
    format!(
        "{string}{ending}",
        string = format!("{number} {thing}", number = number, thing = thing),
        ending = match number {
            1 => "",
            _ => "s",
        }
    )
}

pub fn verse(n: u32) -> String {
    make_ascii_titlecase(format!(
        "{current} of beer on the wall, {current} of beer.\n{what_to_do} of beer on the wall.\n",
        current = if n > 0 {
            pluralize(n, "bottle")
        } else {
            String::from("no more bottles")
        },
        what_to_do = (match n {
            0 => String::from("Go to the store and buy some more, 99 bottles"),
            _ => format!(
                "Take it down and pass it around, {thing}",
                thing = if n == 1 {
                    String::from("no more bottles")
                } else {
                    pluralize(n - 1, "bottle")
                }
            ),
        })
    ))
}

pub fn sing(start: u32, end: u32) -> String {
    // TODO: old version
    // std::ops::Range {
    //     start: end,
    //     end: start + 1,
    // }
    // .collect::<Vec<u32>>()
    // .iter()
    // .rev()
    // .map(|verse_index| verse(*verse_index as u32))

    // NOTE: simpler Range with equal to end
    (end..=start)
        // NOTE: rev exists on Range
        .rev()
        // NOTE: no need for u32 type as
        .map(|verse_index| verse(verse_index))
        .collect::<Vec<String>>()
        .join("\n")
}
