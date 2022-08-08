/// @desc

baseAtkPower = 2;
atkTime = 0.5;

enum defenderStatRows {
	power,
	pierce,
	speed,
	count
}

enum defenderStatColumns {
	name,
	value,
	upgradeCost,
	upgradeCostBase,
	upgradeCostScaling,
	upgradeValue,
	count
}

enum scalingType {
	additive,
	double,
	multiplicative,
	none
}

stats = createGrid(
	["Damage", baseAtkPower, 5, 5, scalingType.additive, baseAtkPower],
	["Pierce", 0, 20, 20, scalingType.double, 1],
	["Speed", 0, 10, 10, scalingType.double, 15]
);

cost = 10;
kills = 0;
spentDosh = 0;
boostMod = 1;

upgraded = false;
path = false;
pathNames = [];