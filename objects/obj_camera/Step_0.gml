//Check for movement camera movement inputs
move_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
move_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
move_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
move_down = keyboard_check(vk_down) or keyboard_check(ord("S"));

x_speed = move_right - move_left;
y_speed = move_down - move_up;

if x_speed != 0 {
	if x < room_width-342 and x > 342 {
		x +=x_speed*camera_speed;
	}
	if x >= room_width - 342 {
		x = room_width - 343;
	}
	
	if x <= 342 {
		x = 343;
	}
}


if y < room_height-192 and y > 192 {
	y += y_speed*camera_speed;
}

if y_speed != 0 {
	if y < room_height-192 and y > 192 {
		y +=y_speed*camera_speed;
	}
	if y >= room_height - 192 {
		y = room_height - 193;
	}
	
	if y <= 192 {
		y = 193;
	}
}