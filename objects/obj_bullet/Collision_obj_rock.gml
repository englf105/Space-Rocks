/// @description ??

instance_destroy();
audio_play_sound(choose(snd_astroid, snd_asteroid2), 2, false);

with(other) {
	instance_destroy();
	
	if (sprite_index == spr_rock_big){
		repeat(2){
			var _new_rock = instance_create_layer(x, y, "Instances", obj_rock);
			_new_rock.sprite_index = spr_rock_medium
		}
	} else if (sprite_index == spr_rock_medium){
		repeat(2){
			var _new_rock = instance_create_layer(x, y, "Instances", obj_rock);
			_new_rock.sprite_index = spr_rock_small
		}
	}
	
	score += 50;
	effect_create_above(ef_explosion, x, y, 1, c_white);
	
}