instance_create_layer(room_width*.5,room_height*.5,"layer_camera",obj_camera);

num_of_food = 200;

for (i=0; i<=num_of_food; i++) {
	instance_create_layer(irandom_range(150,room_width-150),irandom_range(150,room_height-150),"instances",obj_food);
}