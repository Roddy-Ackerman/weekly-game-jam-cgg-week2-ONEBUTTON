current_target = other;

current_target.enemy_hp -= strength;

current_health -= current_target.enemy_strength;

if current_target.enemy_hp <= 0{
	experience += 25;
}

alarm[0] = 1;