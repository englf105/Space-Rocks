/// @description Insert description here
// You can write your code in this editor

// If the help button is clicked
if (ev_mouse_enter) {
	if (mouse_check_button_pressed(mb_left)) {
		if (mouse_check_button_released(mb_left)) {
			global.help += 1
	
		}
	}
}

// if the help button is hovered over
if (ev_mouse_enter) {
	
	image_index = 0;
	
}
if (ev_mouse_leave) {
	
	image_index = 1;
	
}