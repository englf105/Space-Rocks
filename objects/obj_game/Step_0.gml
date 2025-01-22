/// @description ??

if keyboard_check_pressed(vk_enter) {
	switch(room) {
		case rm_start:
			audio_play_sound(sound_help_open, 2, false);
			room_goto(rm_game);
			break;
		case rm_win:
		case rm_lose:
			game_restart();
			break;
	}

}

if (room == rm_game) {
	
	if (score >= 2000) {
		room_goto(rm_win);
	
	}
	if (lives <= 0) {
		room_goto(rm_lose);
	
	}
	if (lives != game_lives){
		alarm[0] = game_get_speed(gamespeed_fps) * 2;
		game_lives = lives;
		
	}
}