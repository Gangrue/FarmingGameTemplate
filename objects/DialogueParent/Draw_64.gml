var old_color = draw_get_color();
var old_alpha = draw_get_alpha();
if (showing_dialogue && current_dialogue != undefined) { 
	var box_x = 0;
	var box_y = 0;
	var text_x = 30;
	var text_y = 18;
	var height = 32;
	var border = 5;
	var padding = 16;
	
	height = string_height(current_dialogue.message);
	if (current_dialogue.decisions != undefined) {
		for(var i=0; i< array_length(current_dialogue.decisions); i++) {
			height += padding;
			height += string_height(current_dialogue.decisions[i].optionText);
		}
	}
	if (sprite_get_height(current_dialogue.sprite) > height) {
		height = sprite_get_height(current_dialogue.sprite);
	}
	height += padding *2;
	text_x = sprite_get_width(current_dialogue.sprite) + (padding * 2);
	box_y = display_get_gui_height() - height;
	draw_set_alpha(alpha);
	
	draw_set_color(c_black);
	draw_rectangle(box_x,box_y,box_x+display_get_gui_width(), box_y+height, false);
	
	draw_set_color(c_white);
	draw_rectangle(box_x+border, box_y+border, box_x+display_get_width() - border, box_y+height - border, false);
	
	draw_set_color(c_black);
	draw_rectangle(box_x+(border*2), box_y+(border*2), box_x+display_get_width() - (border*2), box_y+height - (border*2), false);
	
	if (current_dialogue.sprite != -1) {
		draw_sprite(current_dialogue.sprite, 0, box_x+border*3,box_y+border*3);
	}
	
	draw_set_color(c_white);
	draw_text_ext(box_x+text_x,box_y+text_y, current_dialogue.message, 16, display_get_gui_width() - 192);
	
	if (current_dialogue.decisions != undefined) {
		var floating_decision_y = string_height(current_dialogue.message) + (padding);
		for(var i=0; i<array_length(current_dialogue.decisions); i++) {
			if (current_selected_decision = i) {
				draw_set_color(c_yellow);
			}
			else {
				draw_set_color(c_grey);
			}
			draw_text_ext(box_x+text_x, box_y+text_y+floating_decision_y, current_dialogue.decisions[i].optionText, 16, display_get_gui_width() - 192);
			floating_decision_y += string_height(current_dialogue.decisions[i].optionText) + (padding);
		}
	}
	alpha = lerp(alpha, 1, 0.06);
}
draw_set_color(old_color);
draw_set_alpha(old_alpha);