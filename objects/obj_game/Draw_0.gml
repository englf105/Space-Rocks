/// @description Draw

switch(room) {
	case rm_game:

		draw_set_halign(fa_right);
		draw_text_transformed(990, 20, string(score), 2, 2, 0);

		break;
		
	case rm_start:
		
		draw_set_halign(fa_center);
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