event_inherited();
character_create_initialization();
load_saved_character(GameManager.current_save);
faction = "Player";
//Camera
my_camera = instance_create_depth(x,y, 0, Camera);
my_inventory = instance_create_depth(x,y,0,Inventory);
move_spd = 2;
is_moving = false;
is_doing_action = false;
is_talking = false;
is_attacking = false;
base_attack_timer_max = 16;
attack_timer_max = 16;
attack_timer = attack_timer_max;
Direction = 0;

base_HPMAX = 100;
HPMAX = 100;
HP = HPMAX;

base_MPMAX = 100;
MPMAX = 100;
MP = MPMAX;
MP_REGEN = 0.05;

HITSPD = 10;
SPD = 2;
ATK = 1;

base_SPD = 2;
base_ATK = 1;
base_HITSPD = 10;

money = 0;

open_chest_distance = 48;
interact_distance = 64;
crop_grab_distance = 128;
base_bodyTemperature = 50;
weathered_bodyTemperature = 0;
bodyTemperature = 29;

base_defense = 0;
weathered_defense = 0;
defense = 0;

is_picking_up = false;
picked_up_object = undefined;
max_pickup_distance = 48;

is_in_water = false;
wet_amount = 0;
wet_amount_max = 100;


showing_off_reward = false;
showing_off_reward_timer = 0;
showing_off_reward_timer_max = 64;
reward_sprite = spr_reward_item;
reward_sprite_index = 0;

is_sneaking = false;
base_visibility = 1;
visibility = 1;
is_in_tall_grass = false;
load_day();