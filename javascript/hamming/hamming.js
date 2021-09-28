export const compute = (str1, str2) => {
	if (str1.length === 0 && str2.length > str1.length)
		throw new Error("left strand must not be empty");

	if (str2.length === 0 && str1.length > str2.length)
		throw new Error("right strand must not be empty");

	if (str1.length !== str2.length)
		throw new Error("left and right strands must be of equal length");

	if (str1.length === 0) return 0;

	return str1
		.split("")
		.map((value, index) => (value === str2[index] ? 0 : 1))
		.reduce((previousValue, currentValue) => currentValue + previousValue);
};
