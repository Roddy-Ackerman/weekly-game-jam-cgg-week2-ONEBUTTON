
num_of_food = 200;

for (i=0; i<=num_of_food; i++) {
	instance_create_layer(irandom_range(150,room_width-150),irandom_range(150,room_height-150),"instances",obj_food);
}

current_gold = global.start_gold;
current_iron = global.start_iron;
current_food = global.start_food;
current_water = global.start_water;

current_timer = global.win_timer;