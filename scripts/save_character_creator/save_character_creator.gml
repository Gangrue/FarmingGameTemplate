// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_character_creator(saveName){
	//GameManager.isLoadingGame = true;
	
	var hairChoice = 0;
	with(HairSelectField) {
		hairChoice = selected_val;
	}
	var hairColor = 0;
	var skinColor = 0;
	var faceExtraChoice = 0;
	
	var firstName = "";
	with(FirstNameInputField) {
		firstName = input_text;
	}
	var lastName = "";
	with(LastNameInputField) {
		lastName = input_text;
	}
	
	var shirtChoice = 0;
	with(ShirtSelectField) {
		shirtChoice = selected_val;
	}
	var shirtColor = 0;
	
	var pantsChoice = 0;
	with(PantsSelectField) {
		pantsChoice = selected_val;
	}
	var pantsColor = 0;
	var shoesChoice = 0;
	with(ShoeSelectField) {
		shoesChoice = selected_val;
	}
	
	ini_open(saveName + "_character" + ".ini");
	
	//Body Choices
	ini_write_real("Body_data", "Hair", hairChoice);
	ini_write_real("Body_Data", "Hair_Color", hairColor);
	ini_write_real("Body_Data", "Skin_Color", skinColor);
	ini_write_real("Body_Data", "Face_Extra", faceExtraChoice);
	
	//Name
	ini_write_string("Chosen_Name", "First_Name", firstName);
	ini_write_string("Chosen_Name", "Last_Name", lastName);
	
	//Clothing
	ini_write_real("Clothing_Data", "Shirt", shirtChoice);
	ini_write_real("Clothing_Data", "Shirt_Color", shirtColor);
	ini_write_real("Clothing_Data", "Pants", pantsChoice);
	ini_write_real("Clothing_Data", "Shirt_Color", pantsColor);
	ini_write_real("Clothing_Data", "Shoes", shoesChoice);
	
	ini_close();
}