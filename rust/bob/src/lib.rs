fn has_no_characters(message: &str) -> bool {
    message.find(char::is_lowercase) == None && message.find(char::is_uppercase) == None
}

fn is_sure(message: &str) -> bool {
    (message.ends_with(" ") && message.find("?") == Some(0))
        || message.ends_with("?")
        || (has_no_characters(message) && message.find("?") != None)
}

fn has_only_uppercase(message: &str) -> bool {
    (message.find(char::is_lowercase) == None && message.find(char::is_uppercase) != None)
}

fn is_silent(message: &str) -> bool {
    message.len() == 0 || (message.contains("\r") && (message.find("?") == None))
}

fn has_chars_and_only_uppercase(message: &str) -> bool {
    !has_no_characters(message) && has_only_uppercase(message)
}

fn has_only_uppercase_ending_in_question(message: &str) -> bool {
    has_only_uppercase(message) && message.ends_with("?")
}

const STATEMENT: &'static str = "Whatever.";
const QUESTION: &'static str = "Sure.";
const SILENCE: &'static str = "Fine. Be that way!";
const CALM: &'static str = "Calm down, I know what I'm doing!";
const CHILL: &'static str = "Whoa, chill out!";

pub fn reply(message: &str) -> &str {
    match message.trim() {
        message if is_silent(message) => SILENCE,
        message if has_only_uppercase_ending_in_question(message) => CALM,
        message if has_chars_and_only_uppercase(message) => CHILL,
        message if is_sure(message) => QUESTION,
        _ => STATEMENT,
    }
}
