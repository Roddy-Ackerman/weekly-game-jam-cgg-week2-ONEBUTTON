/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

crop_ready -=1;

if crop_ready <=0 {
	if obj_game_controller.current_water >= 10{
		obj_game_controller.current_water -=10;
		obj_game_controller.current_food +=20;
	}
	crop_ready = 150;
}