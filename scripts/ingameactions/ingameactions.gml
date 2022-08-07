///@func upgradeDefender(defender, stat)
///@desc Upgrade a defender
///@arg defender ID of defender to be upgraded
///@arg stat The stat to upgrade
function upgradeDefender(defender, stat) {
	switch(defender.object_index) {
		case oBomber:
			switch(stat) {
				case bomberStats.atkPower:
					defender.atkPower += defender.baseAtkPower;
					oGame.bank -= defender.statCost[bomberStats.atkPower];
				break;
				case bomberStats.atkRadius:
					defender.atkRadius += 10;
					oGame.bank -= defender.statCost[bomberStats.atkRadius];
					defender.statCost[bomberStats.atkRadius] *= 2;
					break;
				case bomberStats.atkSpeed:
					defender.atkSpeed += 15;
					oGame.bank -= defender.statCost[bomberStats.atkSpeed];
					defender.statCost[bomberStats.atkSpeed] *= 2;
					break;
			}
			break;
		case oDefender:
			switch(stat) {
				case gunnerStats.atkPower:
					defender.atkPower += defender.baseAtkPower;
					oGame.bank -= defender.statCost[gunnerStats.atkPower];
					break;
				case gunnerStats.atkPierce:
					defender.atkPierce += 1;
					oGame.bank -= defender.statCost[gunnerStats.atkPierce];
					defender.statCost[gunnerStats.atkPierce] *= 2;
					break;
				case gunnerStats.atkSpeed:
					defender.atkSpeed += 15;
					oGame.bank -= defender.statCost[gunnerStats.atkSpeed];
					defender.statCost[gunnerStats.atkSpeed] *= 2;
					break;
			}
			break;
	}
}

///@func createDefender(defender)
///@desc Create a defender
///@arg defender Type of defender
function createDefender(defenderType) {
	switch(defenderType) {
		case defenderTypes.gunner:
			var defender = instance_create_layer(oWall.x, 0, "Instances", oDefender);
			ds_list_add(oWall.defenderList, defender);
			break;
		case defenderTypes.bomber:
			var defender = instance_create_layer(oWall.x, 0, "Instances", oBomber);
			ds_list_add(oWall.defenderList, defender);
			break;
	}
}

