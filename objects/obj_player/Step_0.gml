/// @description Insert description here
// You can write your code in this editor
movUp=keyboard_check(ord("S"))-keyboard_check(ord("W"));
movSide=keyboard_check(ord("D"))-keyboard_check(ord("A"));

yMov=movUp*movSpd;
xMov=movSide*movSpd;

if(!place_meeting(x+xMov,y,obj_wall)){
	x+=xMov;
}
if(!place_meeting(x,y+yMov,obj_wall)){
	y+=yMov;
}