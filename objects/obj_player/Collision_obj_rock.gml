/// @description When hit

effect_create_above(ef_firework, x, y, 1, c_white);
audio_play_sound(snd_die, 2, false);
instance_destroy();

lives -= 1;


