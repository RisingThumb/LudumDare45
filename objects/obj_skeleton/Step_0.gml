/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(sfx){
	sfx=false;
	audio_play_sound(snd_skel,1,false);
	part_particles_create(global.ps, x, y, global.part_skel, 50);
}

//DOwn
if(facing==0){
	if(place_meeting(x,y+movSpd,obj_wall) or place_meeting(x,y+movSpd,obj_door)){
		facing=irandom(3);
	}
	else{
		y+=movSpd;
		sprite_index=sprSkeletonWalking;
	}
}

//Up
if(facing==1){
	if(place_meeting(x,y-movSpd,obj_wall) or place_meeting(x,y-movSpd,obj_door)){
		facing=irandom(3);
	}
	else{
		y-=movSpd;
		sprite_index=sprSkeletonWalkingBack;
	}
}

//Left
if(facing==2){
	if(place_meeting(x+movSpd,y,obj_wall) or place_meeting(x+movSpd,y,obj_door)){
		facing=irandom(3);
	}
	else{
		x+=movSpd;
		image_xscale=-0.5;
		sprite_index=sprSkeletonWalkLeft;
	}
}

//Right
if(facing==3){
	if(place_meeting(x-movSpd,y,obj_wall) or place_meeting(x-movSpd,y,obj_door)){
		facing=irandom(3);
	}
	else{
		x-=movSpd;
		image_xscale=-0.5;
		sprite_index=sprSkeletonWalkSide
	}
}
