if clicked == true {
	draw_text(display_get_gui_width()*.5,display_get_gui_height()*.05,first_name + " " + last_name + " is selected");
	draw_text(display_get_gui_width()*.5,display_get_gui_height()*.05+25,"Level: " + string(level));
	draw_text(display_get_gui_width()*.5,display_get_gui_height()*.05+50,"Health: " + string(current_health));
	draw_text(display_get_gui_width()*.5,display_get_gui_height()*.05+75,"Strength: " + string(strength));
	draw_text(display_get_gui_width()*.5,display_get_gui_height()*.05+100,"Agility: " + string(agility));
	draw_text(display_get_gui_width()*.5,display_get_gui_height()*.05+125,"Experience: " + string(experience));
	draw_text(display_get_gui_width()*.5,display_get_gui_height()*.05+150,"Exp to Next Level: " + string(max_exp));
	
}