
//Citizen Stat variables
level = 1;
experience = 0;
max_exp = experience + (level*100);
first_name = choose("Steve","Bud","Chad", "Ryan","Evan","Caleb","Albert","Mathew");
last_name = choose("Smith","Bard","Finnegan","Brantley","Cod","Dangerfield","Kent");
strength = irandom_range(3,8);
life = irandom_range(15,25);
agility = irandom_range(1,3);




//Movement variables
speed= agility*.5;
direction = irandom(360);

init_move_cooldown = 150;
move_cooldown = init_move_cooldown;


//display stats variables
clicked = false;