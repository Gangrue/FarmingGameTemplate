// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function define_items(){
	define_item(ITEMS.EMPTY, 0, "EMPTY", "", ITEM_TYPE.LENGTH, 0, empty_script, "");
	define_item(ITEMS.APPLE, 255, "Apple", "A Tasty Apple", ITEM_TYPE.FOOD, 5, consume_food, "HP+5,CONSUME");
	define_item(ITEMS.APPLESEED, 255, "Apple Seed", "Grows an Apple Tree", ITEM_TYPE.TREESEED, 30, plant_tree, "AppleTree");
	define_item(ITEMS.HOE, 1, "Hoe", "Used to till the ground.", ITEM_TYPE.HOE, 100, attack_hoe, "DMG+1, MPCOST+1");
	define_item(ITEMS.WATERINGCAN, 1, "Watering Can", "Used to water a planted seed.", ITEM_TYPE.WATERINGCAN, 100, attack_wateringcan, "100");
	define_item(ITEMS.SICKLE, 1, "Sickle", "Used to harvest a plant", ITEM_TYPE.WEAPON, 100, attack_sickle, "DMG+1, MPCOST+1");
	define_item(ITEMS.AXE, 1, "Axe", "Used to chop down trees", ITEM_TYPE.WEAPON, 100, attack_axe, "DMG+2, MPCOST+1");
	define_item(ITEMS.SIMPLEHAT, 1, "Hat", "A simple hat. Helps protect against the sun.", ITEM_TYPE.HEAD, 100, empty_script, "DEF+1, HEAT+2");
	define_item(ITEMS.SIMPLESHIRT, 1, "Shirt", "A basic shirt. Provides poor protection.", ITEM_TYPE.BODY, 100, empty_script, "DEF+2, HEAT+5");
	define_item(ITEMS.SIMPLEPANTS, 1, "Pants", "A simple pair of pants. Minor scratches may be prevented.", ITEM_TYPE.LEGS, 100, empty_script, "DEF+2, HEAT+5");
	define_item(ITEMS.SIMPLEBOOTS, 1, "Boots", "A pair of boots. Not great at keeping out water, but more cleanly than bare feet.", ITEM_TYPE.FOOT, 100, empty_script, "DEF+1, HEAT+3");
	//tomato,
	define_item(ITEMS.TOMATO, 255, "Tomato", "A Tasty Tomato", ITEM_TYPE.FOOD, 50, consume_food, "HP+5,CONSUME");
	define_item(ITEMS.TOMATOSEED, 255, "Tomato Seed", "Grows a Tomato Plant", ITEM_TYPE.SEED, 30, empty_script, crop.tomato);
	//potato,
	define_item(ITEMS.POTATO, 255, "Potato", "A Tasty potato", ITEM_TYPE.FOOD, 50, consume_food, "HP+5,CONSUME");
	define_item(ITEMS.POTATOSEED, 255, "Potato Seed", "Grows an potato", ITEM_TYPE.SEED, 30, empty_script, crop.potato);
	//carrot,
	define_item(ITEMS.CARROT, 255, "Carrot", "A Tasty Carrot", ITEM_TYPE.FOOD, 50, consume_food, "HP+5,CONSUME");
	define_item(ITEMS.CARROTSEED, 255, "Carrot Seed", "Grows a Carrot", ITEM_TYPE.SEED, 30, empty_script, crop.carrot);
	//artichoke,
	define_item(ITEMS.ARTICHOKE, 255, "Artichoke", "A Tasty Artichoke", ITEM_TYPE.FOOD, 50, consume_food, "HP+5,CONSUME");
	define_item(ITEMS.ARTICHOKESEED, 255, "Artichoke Seed", "Grows an Artichoke", ITEM_TYPE.SEED, 30, empty_script, crop.artichoke);
	//chilli,
	define_item(ITEMS.CHILLI, 255, "Chili", "A Tasty Chili", ITEM_TYPE.FOOD, 50, consume_food, "HP+5,CONSUME");
	define_item(ITEMS.CHILLISEED, 255, "Chili Seed", "Grows a Chili", ITEM_TYPE.SEED, 30, empty_script, crop.chilli);
	//gourd,
	define_item(ITEMS.GOURD, 255, "Gourd", "A Tasty Gourd", ITEM_TYPE.FOOD, 50, consume_food, "HP+5,CONSUME");
	define_item(ITEMS.GOURDSEED, 255, "Gourd Seed", "Grows a Gourd", ITEM_TYPE.SEED, 30, empty_script, crop.gourd);
	//corn
	define_item(ITEMS.CORN, 255, "Corn", "A Tasty Corn", ITEM_TYPE.FOOD, 50, consume_food, "HP+5,CONSUME");
	define_item(ITEMS.CORNSEED, 255, "Corn Seed", "Grows a Corn", ITEM_TYPE.SEED, 30, empty_script, crop.corn);

	//trees!
	define_item(ITEMS.WOOD, 255, "Wood", "Some wood, useful for building.", ITEM_TYPE.MATERIAL, 1, empty_script, "");
	define_item(ITEMS.TREESEED, 255, "Tree Sapling", "Grows a Tree", ITEM_TYPE.TREESEED, 2, plant_tree, "TreePlant");
	
	define_item(ITEMS.QUESTWINE, 255, "Wine To Deliver", "A Beautiful bottle of wine!", ITEM_TYPE.QUEST, 2, empty_script, "");

	define_item(ITEMS.YARROW, 255, "Yarrow", "Fresh Yarrow, good for turning into fertilizing or medicinal purposes.", ITEM_TYPE.MATERIAL, 15, consume_food, "HP+1,CONSUME");

}

function define_item(item_id, item_qty, item_name, item_desc, item_type, item_val, item_script, item_args) {
	item_definitions[item_id][ITEM_PARAMETERS.ID] = item_id;
	item_definitions[item_id][ITEM_PARAMETERS.QTY] = 0+item_qty;
	item_definitions[item_id][ITEM_PARAMETERS.NAME] = ""+item_name;
	item_definitions[item_id][ITEM_PARAMETERS.DESC] = ""+item_desc;
	item_definitions[item_id][ITEM_PARAMETERS.ITEM_TYPE] = item_type;
	item_definitions[item_id][ITEM_PARAMETERS.VALUE] = item_val;
	item_definitions[item_id][ITEM_PARAMETERS.SCRIPT] = item_script;
	item_definitions[item_id][ITEM_PARAMETERS.ATTRIBUTES] = item_args;
}