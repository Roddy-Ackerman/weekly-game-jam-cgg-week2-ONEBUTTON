/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


if obj_game_controller.current_water >= 25 {
	obj_game_controller.current_water -=25;
	instance_create_layer(x,y,"instances",obj_building_farm);
}