// Initialize variables for the wave motion
t = 0;             // A "timer" variable to track the position in the wave cycle (use 't' to avoid conflict with 'x' or 'y')
increment = 2;     // Speed of the wave (adjust for frequency)
amplitude = 2;    // Maximum distance from the center point (height of the wave in pixels)
base_x = x;        // Store the object's starting x-position (the wave's center point)
move_speed = 0;    // Optional: horizontal movement speed
