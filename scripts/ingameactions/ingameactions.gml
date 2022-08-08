///@func upgradeDefender(defender, stat)
///@desc Upgrade a defender
///@arg defender ID of defender to be upgraded
///@arg stat The stat to upgrade
function upgradeDefender(defender, stat) {
	defender.stats[# defenderStatColumns.value, stat] += defender.stats[# defenderStatColumns.upgradeValue, stat];
	oGame.bank -= defender.stats[# defenderStatColumns.upgradeCost, stat];
	defender.spentDosh += defender.stats[# defenderStatColumns.upgradeCost, stat];
	if(defender.stats[# defenderStatColumns.upgradeCostScaling, stat] == scalingType.additive) {
		defender.stats[# defenderStatColumns.upgradeCost, stat] += defender.stats[# defenderStatColumns.upgradeCostBase, stat];
	} else if(defender.stats[# defenderStatColumns.upgradeCostScaling, stat] == scalingType.double) {
		defender.stats[# defenderStatColumns.upgradeCost, stat] *= 2;
	} else if(defender.stats[# defenderStatColumns.upgradeCostScaling, stat] == scalingType.multiplicative) {
		defender.stats[# defenderStatColumns.upgradeCost, stat] *= defender.stats[# defenderStatColumns.upgradeCostBase, stat];
	}
}

///@func empowerDefender(defender, path)
///@desc Empower a defender
///@arg defender ID of defender to be upgraded
///@arg path Empower path chosen
function empowerDefender(defender, path) {
	defender.path = defender.pathNames[path];
	defender.upgraded = true;
}

///@func createDefender(defender)
///@desc Create a defender
///@arg defender Type of defender
function createDefender(defenderType) {
	if(ds_list_size(oWall.defenderList) < oWall.maxDefenders) {
		switch(defenderType) {
			case defenderTypes.gunner:
				if(instance_exists(oDefender)) {
					oGame.bank -= defenderCosts[defenderType];
				}
				var defender = instance_create_layer(oWall.x, 0, "Instances", oGunner);
				ds_list_add(oWall.defenderList, defender);
				break;
			case defenderTypes.bomber:
				if(instance_exists(oDefender)) {
					oGame.bank -= defenderCosts[defenderType];
				}
				var defender = instance_create_layer(oWall.x, 0, "Instances", oBomber);
				ds_list_add(oWall.defenderList, defender);
				break;
			case defenderTypes.samurai:
				if(instance_exists(oDefender)) {
					oGame.bank -= defenderCosts[defenderType];
				}
				var defender = instance_create_layer(oWall.x, 0, "Instances", oSamurai);
				ds_list_add(oWall.defenderList, defender);
				break;
		}
	}
}

///@func castAbility(ability)
///@desc Cast an ability
///@arg ability Ability to be cast
function castAbility(ability) {
	switch(ability) {
		case 0:
			with(oDefender) {
				boostMod = 5;	
			}
			oController.alarm[0] = room_speed * 10;
			
			oGame.bank -= oController.abilityCosts[0];
			break;
	}
}