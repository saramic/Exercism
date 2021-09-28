#[derive(Debug)]
pub struct HighScores<'a> {
    // 'a means: lifetime of a to show scores has a lifetime from the new function below
    scores: &'a [u32],
}

// heavily inspired by
//   https://exercism.io/tracks/rust/exercises/high-scores/solutions/8bee1646faa448399a120bc229b833be
// 'a means: more lifetime of a stuff
impl<'a> HighScores<'a> {
    pub fn new(scores: &'a [u32]) -> Self {
        HighScores { scores }
    }

    pub fn scores(&self) -> &[u32] {
        self.scores
    }

    pub fn latest(&self) -> Option<u32> {
        // copied() means: maps an Option<&T> to an Option<T> by copying the contents
        // could have alos used cloned()
        self.scores.last().copied()
    }

    pub fn personal_best(&self) -> Option<u32> {
        // iter() means:
        self.scores.iter().max().cloned()
    }

    pub fn personal_top_three(&self) -> Vec<u32> {
        let mut sorted_scores = self.scores.to_vec();
        sorted_scores.sort();
        // take(3) means: creates an iterator that yields first n fields,
        //                seems better than slice which needed to test that
        //                slice didn't go beyond max elements if there was
        //                less than needing to be sliced
        // copied() means: as above iter().copied() changes from &T to T but
        //                 in this case we want to revers and take 3 before
        //                 we copy just the 3 relevant elements
        // collect() means: transforms iterator into collection
        sorted_scores.iter().rev().take(3).copied().collect()
    }
}
