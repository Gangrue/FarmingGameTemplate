if(!planting) exit;
if(room != RoomFarm) exit;

var cs = cellSize;
var gx = mx div cs;
var gy = my div cs;


var c = c_red;
var cell = ds_crops_instances[# gx, gy];
if (cell == 0) {
	var lay_id = layer_get_id("T_Soil");
	var map_id = layer_tilemap_get_id(lay_id);
	var data = tilemap_get_at_pixel(map_id, mx, my);
	if (data != 0) { 
		c = c_lime; 
	}
}
var xx = gx*cs;
var yy = gy*cs;

//draw if or if not the player can plant
draw_rectangle_color(xx, yy, xx+cs, yy+cs, c,c,c,c, true);

//Draw plant to be planted.
draw_sprite(spr_crop_product, selected_crop, xx+(cs/2), yy+(cs/2));