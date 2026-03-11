
spawn_cooldown -=1;

if spawn_cooldown <= 0{
	instance_create_layer(x,y,"Instances",obj_enemy);
	spawn_cooldown = init_spawn_cooldown;
}