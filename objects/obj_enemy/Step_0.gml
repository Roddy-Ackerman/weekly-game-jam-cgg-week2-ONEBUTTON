
move_cooldown -=1;

//if move_cooldown <= 0 {
//	direction = irandom(360);
//	move_cooldown = init_move_cooldown;
//}


// Step Event
var detection_range = 300;
var nearest_enemy = instance_nearest(x, y, obj_button);

// 1. Proximity Check
if (instance_exists(nearest_enemy)) {
    if (point_distance(x, y, nearest_enemy.x, nearest_enemy.y) < detection_range) {
        state = "CHASE";
    } else {
        state = "WANDER";
    }
}

// 2. State Execution
switch (state) {
    case "WANDER":
        // Logic for walking around (e.g., pathfollowing or random movement)
        if (speed == 0) and move_cooldown <= 0 {
            direction = irandom(360);
            speed = 1;
			move_cooldown = 300;
        }
        break;
        
    case "CHASE":
        // Move towards the enemy while avoiding walls
        mp_potential_step(nearest_enemy.x, nearest_enemy.y, 1, false);
        break;
}

if enemy_hp <= 0{
	instance_destroy(self);
	obj_game_controller.current_gold += 20;
}