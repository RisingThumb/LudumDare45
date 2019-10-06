/// @description Insert description here
// You can write your code in this editor
if(itemAcquiredAlpha>0){
	itemAcquiredAlpha-=0.02;
}
if(collected==Items.totalItems){
	alive=false;
	win=true;
}
if(collected<0){
	collected=0;
}

if(alive){
if(shot){
	tick++;
	if(tick%shootRate==0){
		tick=1;
		shot=false
	}
}

movUp=keyboard_check(ord("S"))-keyboard_check(ord("W"));
movSide=keyboard_check(ord("D"))-keyboard_check(ord("A"));

if(movUp==1){
	facing="down"
}
else if(movUp==-1){
	facing="up"
}
else if(movSide==1){
	facing="left";
}
else if(movSide==-1){
	facing="right";
}


shootUp=keyboard_check(vk_up)-keyboard_check(vk_down);
shootSide=keyboard_check(vk_left)-keyboard_check(vk_right);
if(shootUp==-1){
	facing="down"
}
else if(shootUp==1){
	facing="up"
}
else if(shootSide==-1){
	facing="left";
}
else if(shootSide==1){
	facing="right";
}

xMov=movSide*min(movSpd,abs(curSpd)+spdRate);
yMov=movUp*min(movSpd,abs(curSpd)+spdRate);

curSpd=max(abs(xMov),abs(yMov));

if(!place_meeting(x+xMov,y,obj_wall)){
	if(instance_exists(obj_enemy) && place_meeting(x+xMov,y,obj_door)){
	}
	else{
		x+=xMov;
	}
}
if(!place_meeting(x,y+yMov,obj_wall)){
	if(instance_exists(obj_enemy) && place_meeting(x,y+yMov,obj_door)){
	}
	else{
		y+=yMov;
	}
}

if((!shot) && (shootUp!=0 or shootSide!=0)){
	shot=true;
	audio_play_sound(snd_spit,1,false);
	var p = instance_create_layer(x,y,"Instances",obj_projectile)
	if(shootUp==1){
		//up
		p.facing="up";
	}
	else if(shootUp==-1){
		//Down
		p.facing="down";
	}
	else if(shootSide==1){
		//Left
		p.facing="left";
	}
	else if(shootSide==-1){
		//Right
		p.facing="right";
	}
}
}
if(image_index>=8){
	image_index=7;
}