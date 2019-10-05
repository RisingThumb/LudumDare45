/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button_pressed(mb_left) && mouse_x>bbox_left && mouse_x<bbox_right && mouse_y>bbox_top && mouse_y<bbox_bottom){
	pressed=true;
	script_execute(script)
	alarm_set(0,10);
};