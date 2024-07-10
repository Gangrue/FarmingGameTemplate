// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function obtain_targets_for_faction(given_faction){
	var returnList = ds_list_create();
	switch(given_faction) {
		case "Player":
			with(Attackable) {
				if (faction == "Enemy" || faction == "destructible") {
					ds_list_add(returnList, self);
				}
			}
		break;
		case "Enemy": {
			with(Attackable) {
				if (faction == "Player" || faction == "destructible") {
					ds_list_add(returnList, self);
				}
			}
		}
		break;
	}
	return returnList;
}