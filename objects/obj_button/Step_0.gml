/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button_pressed(mb_left) && collision_point(mouse_x,mouse_y,obj_button,true,false)){
	pressed=true;
	script_execute(script)
	alarm_set(0,10);
};