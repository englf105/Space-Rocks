/// @description Insert description here

if (room == rm_game) {
	
	if(audio_is_playing(snd_title_music)){
		audio_stop_sound(snd_title_music);
	}
	
	audio_play_sound(snd_game_music, 2, true);
	
	repeat(6) {
		var _xx = choose(
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_width),
		);
		var _yy = choose(
			irandom_range(0, room_height*0.3),
			irandom_range(room_height*0.7, room_height),
		);
		instance_create_layer(_xx,_yy, "Instances", obj_rock);
	}
	
	alarm[1] = 60;
}

if (room == rm_start) {
	audio_play_sound(snd_title_music, 2, true);
}