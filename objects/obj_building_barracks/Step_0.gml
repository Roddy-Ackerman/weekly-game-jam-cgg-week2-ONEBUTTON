/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

training_time -=1;

if training_time <=0 {
	if obj_game_controller.current_food >= 10{
		obj_game_controller.current_food -=10;
		instance_create_layer(x,y,"Instances",obj_citizen);
	}
	training_time = 500;
}