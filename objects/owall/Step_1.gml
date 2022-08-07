/// @desc

if(ds_list_size(defenderList) > currentDefenders) {
	currentDefenders += 1;
	
	var iter = 0;
	var wHeight = sprite_height;
	repeat(ds_list_size(defenderList)) {
		defenderList[| iter].y = wHeight*(iter+1)/(currentDefenders+1);
		iter += 1;
	}
}