var count = instance_number(obj_citizen);

bullet_count = instance_number(obj_bullet);

current_water += clamp((.05*count)+.05,0,3);

if keyboard_check_pressed(vk_escape){
	room_goto(rm_menu);
}

if current_water >= 2000 {
	current_water = 2000;
}

current_timer -= .005;