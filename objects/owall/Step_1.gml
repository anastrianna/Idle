/// @desc

if(ds_list_size(defenderList) != currentDefenders) {
	var defender = instance_create_layer(x, y, "Instances", oDefender);
	
	ds_list_add(defenderList, defender);
}