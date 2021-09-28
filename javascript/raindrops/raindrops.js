const sounds = {
	3: "Pling",
	5: "Plang",
	7: "Plong"
};

export const convert = value => {
	const soundValues = Object.keys(sounds).filter(key => value % key === 0);
	return (
		soundValues.reduce(
			(acc, currentValue) => (acc += sounds[currentValue]),
			""
		) || "" + value
	);
};
