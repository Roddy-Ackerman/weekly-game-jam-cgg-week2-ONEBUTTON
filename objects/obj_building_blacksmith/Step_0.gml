/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

smelt_iron -=1;

if smelt_iron <=0 {
	if obj_game_controller.current_iron >= 10 and obj_game_controller.current_gold >= 10{
		obj_game_controller.current_iron -=10;
		obj_game_controller.current_gold -= 10;
		obj_game_controller.current_iron += 15;
	}
	smelt_iron = 500;
}