/// @desc
event_inherited();

enum samuraiStatRows {
	power,
	range,
	speed,
	count
}

enum samuraiPaths {
	phaseblade,
	cleave,
	count
}

baseAtkPower = 20;
atkTime = 1;
baseRange = 64;

stats = createGrid(
	["Damage", baseAtkPower, 20, 20, scalingType.additive, baseAtkPower],
	["Range", baseRange, 20, 20, scalingType.double, baseRange/2],
	["Speed", 0, 10, 10, scalingType.double, 15]
);

cost = 20;

pathNames = ["Phaseblade", "Cleave"];