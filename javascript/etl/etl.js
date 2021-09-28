export const transform = old =>
	Object.keys(old).reduce(
		(map, key) => ({
			...map,
			...old[key].reduce(
				(subMap, value) => ({
					...subMap,
					[value.toLowerCase()]: parseInt(key, 10)
				}),
				{}
			)
		}),
		{}
	);
