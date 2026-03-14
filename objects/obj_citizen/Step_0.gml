
move_cooldown -=1;
//
//if move_cooldown <= 0 {
//	direction = irandom(360);
//	move_cooldown = init_move_cooldown;
//}


// Step Event
var detection_range = 300;
var nearest_enemy = instance_nearest(x, y, obj_enemy);

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
            speed = civ_speed;
			move_cooldown = 300;
        }
        break;
        
    case "CHASE":
        // Move towards the enemy while avoiding walls
        mp_potential_step(nearest_enemy.x, nearest_enemy.y, civ_speed, false);
        break;
}

if clicked == true and keyboard_check_pressed(vk_space) {
	clicked = false;
	global.civ_display = false;
}

if current_health <= 0{
	instance_destroy(self);
}

if experience >= max_exp {
	level += 1;
	current_health = life;
	max_exp = experience + (level*100);
}