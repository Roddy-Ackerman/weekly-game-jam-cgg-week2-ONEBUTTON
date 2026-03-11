// Update the timer
t = (t + increment) mod 360; // Increment the timer and loop back to 0 after 360 degrees

// Calculate the vertical shift using sine wave (dsin uses degrees)
var shift = amplitude * dsin(t);

// Optional: add vertical movement
y += move_speed;

// Apply the wave shift to the object's x position, relative to the base_x
x = base_x + shift;
