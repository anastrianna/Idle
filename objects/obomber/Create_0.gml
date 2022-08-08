/// @desc
event_inherited();

enum bomberStatRows {
	power,
	radius,
	speed,
	count
}

enum bomberPaths {
	fire,
	speed,
	count	
}

baseAtkPower = 5;
baseAtkRadius = 12;
atkTime = 2;

stats = createGrid(
	["Damage", baseAtkPower, 20, 20, scalingType.additive, baseAtkPower],
	["Radius", baseAtkRadius, 10, 10, scalingType.double, baseAtkRadius/2],
	["Speed", 0, 25, 25, scalingType.double, 15]
);

cost = 15;

pathNames = ["Fire", "Speed"];