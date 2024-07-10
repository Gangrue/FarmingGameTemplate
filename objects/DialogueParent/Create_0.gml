dialogue = new Dialogue();

key_next = ord("E");
key_up = ord("W");
key_down = ord("S");

showing_dialogue = false;

current_dialogue = {};
current_selected_decision = 0;
alpha = 0;

waitTimer = 0;
waitTimerMax = 30;
target_npc = undefined;
starting_user = undefined;