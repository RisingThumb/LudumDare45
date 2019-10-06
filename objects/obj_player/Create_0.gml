/// @description Insert description here
// You can write your code in this editor
image_xscale=0.5;
image_yscale=0.5;
win=false

curSpd=0;
spdRate=0.5;
movSpd=3;
imgXsclMod=1;
playerimgXscl=1;
facing="down";
flashalpha=0;
collected=0;

projectilespeed=4;
projectiledamage=1;

shootRate=30;
shot=false;
tick=1;
alive=true;
itemAcquiredAlpha=0;
itemAcquired=0;

defaultStats[0]=movSpd;
defaultStats[1]=shootRate;
defaultStats[2]=projectilespeed;
defaultStats[3]=projectiledamage;

for(var i=0; i<Items.totalItems; i++){
	slimeItems[i,0]=false;
}