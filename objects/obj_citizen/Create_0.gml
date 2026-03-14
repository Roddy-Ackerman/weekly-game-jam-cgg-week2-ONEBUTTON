
//Citizen Stat variables
level = 1;
experience = 0;
max_exp = experience + (level*100);
first_name = choose("Steve","Bud","Chad", "Ryan","Evan","Caleb","Albert","Mathew");
last_name = choose("Smith","Bard","Finnegan","Brantley","Cod","Dangerfield","Kent");
strength = irandom_range(3,8) + level;
life = irandom_range(10,15) + (level*2);
agility = irandom_range(1,3) + level;

current_health = life;


//Movement variables
civ_speed = agility*.5;
//direction = irandom(360);

init_move_cooldown = 300;
move_cooldown = init_move_cooldown;


//display stats variables
clicked = false;

current_target = noone;