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
		
		> Use L/R arrow keys to turn
		> Use Up arrow key to move forward
		> Use SPACE key to shoot
		
		>> press ENTER to start << "
		);
		draw_set_halign(fa_left);
		break;
			
	case rm_win:
		draw_set_halign(fa_center);
		
		draw_text(room_width/2, 700,">> press ENTER to restart <<");
		
		draw_set_halign(fa_left);
		break;
			
	case rm_lose:
		draw_set_halign(fa_center);
		
		draw_text(room_width/2, 500,"final score:" + string(score));
		
		draw_text(room_width/2, 700,">> press ENTER to restart <<");
		
		draw_set_halign(fa_left);
		break;
		
}