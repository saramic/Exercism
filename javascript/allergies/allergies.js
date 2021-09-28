//
// This is only a SKELETON file for the 'Allergies' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

const allergies = [
	"eggs",
	"peanuts",
	"shellfish",
	"strawberries",
	"tomatoes",
	"chocolate",
	"pollen",
	"cats",
];

export class Allergies {
	constructor(score) {
		this.score = score;
	}

	list() {
		return allergies.filter((allergy) => this.allergicTo(allergy));
	}

	allergicTo(item) {
		const allergyMap = this.score
			.toString(2)
			.split("")
			.reverse()
			.map((bit) => parseInt(bit));
		return allergyMap[allergies.findIndex((allergy) => allergy === item)] === 1;
	}
}
