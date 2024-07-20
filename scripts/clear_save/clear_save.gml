// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clear_save(saveName){
	//GameManager.isLoadingGame = true;
	ini_open(saveName + ".ini");
	
	ini_section_delete("DsGrids");
	ini_section_delete("DsLists");
	ini_section_delete("JsonQuestTaskArray");
	ini_section_delete("Custom_Data");
	ini_close();
	
	ini_open("loadGameOnNextStep" + ".ini");
	ini_write_real("0","0", "0");
	ini_close();
}