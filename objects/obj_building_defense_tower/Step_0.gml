/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

shoot_cooldown-= 1;

// Step Event
var detection_range = 300;
var nearest_enemy = instance_nearest(x, y, obj_enemy);

// 1. Proximity Check
if (instance_exists(nearest_enemy)) {
    if (point_distance(x, y, nearest_enemy.x, nearest_enemy.y) < detection_range) {
        shoot_iron = true
    }
}

if shoot_iron == true and shoot_cooldown <= 0{
	    if obj_game_controller.current_iron >=5 {
			obj_game_controller.current_iron -=5;
			shoot_cooldown = 200;
			shoot_iron = false
			instance_create_layer(x,y,"Instances",obj_bullet);
		}
}

//// 2. State Execution
//switch (state) {
//    case "SHOOT":
//        // Logic for walking around (e.g., pathfollowing or random movement)
//        if obj_game_controller.current_iron >=5 and shoot_cooldown <= 0 {
//			obj_game_controller.current_iron -=5;
//			shoot_cooldown = 200;
//			instance_create_layer(x,y,"Instances",obj_bullet);
//		}
//        break;
//        
//    case "IDLE":
//        if shoot_cooldown <= 0{
//			shoot_cooldown = 200;
//		}
//}