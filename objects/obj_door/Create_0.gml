/// @description Insert description here
// You can write your code in this editor
if(x>room_width-64){
	sprite_index=spr_door_right;
}
if(x<64){
	sprite_index=spr_door_left;
}

if(y>room_height-64){
	sprite_index=spr_door_down
}
if(y<64){
	sprite_index=spr_door_up
}