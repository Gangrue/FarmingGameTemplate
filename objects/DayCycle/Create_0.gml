seconds = 6 * 60 * 60;
minutes = 6 * 60;
hours = 6;

day = 1;
season = 1;
year = 1;

time_increment = 3; // seconds per step
time_pause = false;

max_darkness = 0.7;
darkness = 0;
light_color = c_black;
draw_daylight = false;

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

enum DAYPHASE {
	SUNRISE = 6,
	DAYTIME = 8.5,
	SUNSET = 18,
	NIGHTTIME = 22,
}

slept_in_bed = false;
depth = -room_height;