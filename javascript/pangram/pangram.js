export const isPangram = (string) =>
	[..."abcdefghigklmnopqrstuvwxyz"].every((alpha) =>
		string.toLowerCase().includes(alpha)
	);
