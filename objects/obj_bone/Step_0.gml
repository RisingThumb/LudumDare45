/// @description Insert description here
// You can write your code in this editor
image_angle+=5;
if(facing==0){
		y+=movSpd;
}

//Up
if(facing==1){
		y-=movSpd;
}

//Left
if(facing==2){
		x+=movSpd;
}

//Right
if(facing==3){
		x-=movSpd;
}
