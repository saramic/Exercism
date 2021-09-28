/// "Encipher" with the Atbash cipher.
pub fn encode(plain: &str) -> String {
    plain
        .to_ascii_lowercase()
        .chars()
        .filter(|character| character.is_ascii_alphanumeric())
        .map(|character| atbash_cypher(character))
        .collect::<Vec<_>>()
        .chunks(5)
        .map(|chunk| chunk.iter().cloned().collect::<String>())
        .collect::<Vec<String>>()
        .join(" ")
}

fn atbash_cypher(character: char) -> char {
    (match character {
        character if character.is_numeric() => character as u8,
        _ => 'a' as u8 + (25 - (character as u8 - 'a' as u8)),
    }) as char
}

/// "Decipher" with the Atbash cipher.
pub fn decode(cipher: &str) -> String {
    cipher
        .chars()
        .filter(|character| character.is_ascii_alphanumeric())
        .map(|character| atbash_cypher(character))
        .collect()
}
