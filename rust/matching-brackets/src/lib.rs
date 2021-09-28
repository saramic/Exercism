fn reverse_bracket(bracket: char) -> char {
    match bracket {
        ']' => '[',
        ')' => '(',
        '}' => '{',
        _ => ' ',
    }
}

pub fn brackets_are_balanced(string: &str) -> bool {
    let mut bracket_history = Vec::new();
    for character in string.chars() {
        match character {
            '[' | '(' | '{' => bracket_history.push(character.to_string()),
            ']' | ')' | '}' => {
                if bracket_history.last() == Some(&reverse_bracket(character).to_string()) {
                    bracket_history.pop();
                } else {
                    bracket_history.push(character.to_string())
                }
            }
            _ => {}
        }
    }
    bracket_history.len() == 0
}
