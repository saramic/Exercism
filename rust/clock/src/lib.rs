use std::fmt;

#[derive(Debug, PartialEq)]
pub struct Clock {
    minutes: i32,
}

const MINUTES_IN_AN_HOUR: i32 = 60;
const MINUTES_IN_A_DAY: i32 = 24 * MINUTES_IN_AN_HOUR;

impl Clock {
    fn minutes_adjusted(hours: i32, minutes: i32) -> i32 {
        let input_minutes = (hours * MINUTES_IN_AN_HOUR) + minutes;
        input_minutes.rem_euclid(MINUTES_IN_A_DAY)
    }

    pub fn new(hours: i32, minutes: i32) -> Self {
        Clock {
            minutes: Clock::minutes_adjusted(hours, minutes),
        }
    }

    pub fn add_minutes(&self, minutes: i32) -> Self {
        Clock {
            minutes: Clock::minutes_adjusted(0, self.minutes + minutes),
        }
    }
}

impl fmt::Display for Clock {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(
            f,
            "{:0>2}:{:0>2}",
            self.minutes / MINUTES_IN_AN_HOUR,
            self.minutes.rem_euclid(MINUTES_IN_AN_HOUR)
        )
    }
}
