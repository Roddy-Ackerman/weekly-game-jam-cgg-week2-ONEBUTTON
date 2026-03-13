
move_cooldown -=1;

if move_cooldown <= 0 {
	direction = irandom(360);
	move_cooldown = init_move_cooldown;
}