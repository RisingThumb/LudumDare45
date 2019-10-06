/// @description Insert description here
// You can write your code in this editor
if(facing=="up"){
	y-=projectilespeed;
	image_angle=90;
}
else if(facing=="down"){
	y+=projectilespeed;
	image_angle=270;
}
else if(facing=="left"){
	x-=projectilespeed;
	image_angle=180;
}
else if(facing=="right"){
	x+=projectilespeed;
	image_angle=0;
}