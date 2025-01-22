/// @description Movement

if keyboard_check(vk_left) {
	image_angle += 4;
}

if keyboard_check(vk_right) {
	image_angle -= 4;
}

if keyboard_check(vk_up) {
	motion_add(image_angle, 0.05);
}

move_wrap(true, true, 0)

if keyboard_check_pressed(vk_space) {
	var _inst = instance_create_layer(x, y, "Instances", obj_bullet);
	_inst.direction = image_angle;
	audio_play_sound(sound_shoot, 2, false);
	motion_add(image_angle,-0.05)
}