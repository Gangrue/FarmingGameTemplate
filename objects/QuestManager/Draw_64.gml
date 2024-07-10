var view_width = camera_get_view_width(view_camera[0]);
var quests_length = ds_list_size(acceptedQuestList);
for(var i=0; i<quests_length; i++) {
	var curQuest = ds_list_find_value(acceptedQuestList, i);
	draw_text(view_width-128, 128, quest_definitions[curQuest][QUEST_PARAMETERS.NAME]);
}