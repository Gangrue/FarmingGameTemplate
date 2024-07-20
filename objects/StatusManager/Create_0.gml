enum STATUS {
	WET,
	TIRED,
	EXTREMELYTIRED,
	EXHAUSTED,
	EXTREMELYEXHAUSTED,
	WARM,
	HOT,
	BURNING,
	COLD,
	FREEZING,
	FROSTBIT,
	SICK,
	HUNGRY,
	STARVING,
	SNEAKING,
	GREATERSNEAKING,
	LENGTH
}

enum STATUSPARAMETER {
	NAME,
	DESCRIPTION,
	CONSTANTEFFECT,
	LENGTH
}

for(var i=0; i<STATUS.LENGTH; i++) {
	status_definitions[i][STATUSPARAMETER.NAME] = "";
	status_definitions[i][STATUSPARAMETER.DESCRIPTION] = "";
	status_definitions[i][STATUSPARAMETER.CONSTANTEFFECT] = empty_script;
}
define_status_effect(STATUS.WET, "Wet", "You are soaked.", status_effect_wet);
define_status_effect(STATUS.TIRED, "Tired", "You are tired.", empty_script);
define_status_effect(STATUS.EXTREMELYTIRED, "Extremely Tired", "You are feeling very tired.", empty_script);
define_status_effect(STATUS.EXHAUSTED, "Exhaustion", "You are exhausted.", status_effect_exhausted);
define_status_effect(STATUS.EXTREMELYEXHAUSTED, "Extreme Exhaustion", "You are extremely exhausted.", status_effect_extremely_exhausted);
define_status_effect(STATUS.WARM, "Feeling Warm", "You are feeling warm.", empty_script);
define_status_effect(STATUS.HOT, "Feeling hot", "You are feeling hot.", empty_script);
define_status_effect(STATUS.BURNING, "Burning", "You are burning.", empty_script);
define_status_effect(STATUS.COLD, "Cold", "You are Cold.", empty_script);
define_status_effect(STATUS.FREEZING, "Freezing", "You are freezing.", empty_script);
define_status_effect(STATUS.FROSTBIT, "Frostbit", "You are too cold! You have been frost bit.", empty_script);
define_status_effect(STATUS.SICK, "Sick", "You are sick.", empty_script);
define_status_effect(STATUS.HUNGRY, "Hungry", "You are hungry.", empty_script);
define_status_effect(STATUS.STARVING, "Starving", "You are Starving.", empty_script);
define_status_effect(STATUS.SNEAKING, "Sneaking", "You are Sneaking. Visibility reduced.", status_effect_sneaking);
define_status_effect(STATUS.GREATERSNEAKING, "Greatly Concealed", "You are very hidden. Almost non-visible.", status_effect_greater_sneaking);

statuses = ds_list_create();