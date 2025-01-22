/// @description Restart Game

room_restart();
if(audio_is_playing(sound_game_music)){
		audio_stop_sound(sound_game_music);
	}