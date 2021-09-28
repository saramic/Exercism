pub fn build_proverb(list: &[&str]) -> String {
    let mut output = String::new();
    if !list.is_empty() {
        for index in 0..list.len() - 1 {
            output += &format!(
                "For want of a {} the {} was lost.\n",
                list[index],
                list[index + 1]
            );
        }
        output += &format!("And all for the want of a {}.", list[0]);
    };
    output
}
