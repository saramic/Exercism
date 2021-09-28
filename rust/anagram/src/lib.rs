use std::collections::HashSet;

fn sort_string(string: &str) -> Vec<char> {
    let mut sorted_string = string.to_lowercase().chars().collect::<Vec<char>>();
    sorted_string.sort();
    sorted_string
}

fn is_anagram(needle: &str, haystack: &str) -> bool {
    sort_string(needle) == sort_string(haystack) && needle.to_lowercase() != haystack.to_lowercase()
}

pub fn anagrams_for<'a>(word: &str, possible_anagrams: &[&'a str]) -> HashSet<&'a str> {
    possible_anagrams
        .iter()
        .filter(|anagram| is_anagram(&word, &anagram))
        .cloned()
        .collect()
}
