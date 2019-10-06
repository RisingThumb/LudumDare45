/// @description Insert description here
// You can write your code in this editor
if(!alive){
	alive=true;
	x=room_width/2;
	y=room_width/2;
	room_goto(rm_game);
	
	movSpd=defaultStats[0];
	shootRate=defaultStats[1];
	projectilespeed=defaultStats[2];
	projectiledamage=defaultStats[3];
	collected=0;
	
	for(var i=0; i<Items.totalItems; i++){
	slimeItems[i,0]=false;
	}
	win=false;
}