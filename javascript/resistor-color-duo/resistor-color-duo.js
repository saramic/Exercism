const COLOR_VALUES = {
	black: 0,
	brown: 1,
	red: 2,
	orange: 3,
	yellow: 4,
	green: 5,
	blue: 6,
	violet: 7,
	grey: 8
};

export const decodedValue = ([tens, units]) =>
	COLOR_VALUES[tens] * 10 + COLOR_VALUES[units];
