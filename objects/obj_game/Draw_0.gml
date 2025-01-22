/// @description Draw

switch(room) {
	case rm_game:
		draw_set_halign(fa_left);
		draw_text(10, 10, "Score: " + string(score));
		draw_text(10, 20, "Lives: " + string(lives));
		break;
		
	case rm_start:
		
		draw_set_halign(fa_center);
		var c = c_yellow
		draw_text(room_width/2, 400,
		@"Score 2000 points to win! 
		
		>> press ENTER to start << "
		);
		draw_set_halign(fa_left);
		break;
			
	case rm_win:
		draw_set_halign(fa_center);
		var c = c_lime
		draw_text_transformed_color(room_width/2, 100,
			"You win!", 3, 3, 0, c, c, c, c, 1
		);
		
		draw_text(room_width/2, 500,">> press ENTER to restart <<");
		
		draw_set_halign(fa_left);
		break;
			
	case rm_lose:
		draw_set_halign(fa_center);
		var c = c_red
		draw_text_transformed_color(room_width/2, 100,
			"You Lose!", 3, 3, 0, c, c, c, c, 1
		);
		
		draw_text(room_width/2, 250,"final score:" + string(score));
		
		draw_text(room_width/2, 500,">> press ENTER to restart <<");
		
		draw_set_halign(fa_left);
		break;
		
}