pub fn find_saddle_points(input: &[Vec<u64>]) -> Vec<(usize, usize)> {
    let mut found = Vec::new();
    for (row_index, row) in input.iter().enumerate() {
        for (col_index, col) in row.iter().enumerate() {
            if row.iter().all(|x| x <= col)
                && (0..input.len()).all(|row_for_col| input[row_for_col][col_index] >= *col)
            {
                found.push((row_index, col_index))
            }
        }
    }
    found
}
