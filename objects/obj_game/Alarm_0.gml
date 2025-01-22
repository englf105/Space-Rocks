/// @description Restart Game

room_restart();
if(audio_is_playing(snd_game_music)){
		audio_stop_sound(snd_game_music);
	}