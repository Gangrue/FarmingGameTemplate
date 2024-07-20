// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_saved_character(saveName){
	ini_open(saveName + "_character" + ".ini");
	
	//Body Choices
	var hairChoice = ini_read_real("Body_data", "Hair", 0);
	var hairColor = ini_read_real("Body_Data", "Hair_Color", 0);
	var skinColor = ini_read_real("Body_Data", "Skin_Color", 0);
	var faceExtra = ini_read_real("Body_Data", "Face_Extra", 0);
	
	//Name
	var firstName = ini_read_string("Chosen_Name", "First_Name", 0);
	var lastName = ini_read_string("Chosen_Name", "Last_Name", 0);
	
	//Clothing
	var shirtChoice = ini_read_real("Clothing_Data", "Shirt", 0);
	var shirtColor = ini_read_real("Clothing_Data", "Shirt_Color", 0);
	var pantsChoice = ini_read_real("Clothing_Data", "Pants", 0);
	var pantsColor = ini_read_real("Clothing_Data", "Shirt_Color", 0);
	var shoesChoice = ini_read_real("Clothing_Data", "Shoes", 0);
	
	ini_close();
	
	Player.firstName = firstName;
	Player.lastName = lastName;
	Player.shirtChoice = shirtChoice;
	Player.pantsChoice = pantsChoice;
	Player.shoesChoice = shoesChoice;
}