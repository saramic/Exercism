export const convert = (digits, from, to) => {
	let total = digits
		.map((value, index) => value * Math.pow(from, digits.length - 1 - index))
		.reduce((total, value) => total + value, 0);

	const returnDigits = [];
	do {
		returnDigits.push(total % to);
		total = Math.floor(total / to);
	} while (total > 0);
	return returnDigits.reverse();
};
