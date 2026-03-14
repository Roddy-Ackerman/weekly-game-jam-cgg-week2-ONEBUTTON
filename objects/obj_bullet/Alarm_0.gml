var nearest_enemy = instance_nearest(x, y, obj_enemy); // Find the nearest instance of obj_enemy (Note: this includes the enemy itself if it is the only one. See note below)

direction = point_direction(x, y, nearest_enemy.x, nearest_enemy.y); // Calculate direction towards the target
speed = 8; // Set bullet speed (adjust value as needed)
image_angle = direction; // Optional: Make the bullet sprite rotate to face the direction of movement

