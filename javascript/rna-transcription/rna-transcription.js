const TRANSLATE = {
	C: "G",
	G: "C",
	A: "U",
	T: "A"
};

const translate = rnaChar => {
	return (
		TRANSLATE[rnaChar] ||
		(function error() {
			throw new Error("Invalid input DNA.");
		})()
	);
};

export const toRna = rnaString => {
	return rnaString
		.split("")
		.map(translate)
		.join("");
};
