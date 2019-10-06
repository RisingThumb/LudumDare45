/// @description Insert description here
// You can write your code in this editor
instance_destroy(other.id);
audio_play_sound(snd_die,1,false);
part_particles_create(global.ps, x, y, global.part_slime, 50);
var hasItem=false;
flashalpha=1;

for(var i=0; i<Items.totalItems; i++){
	if(slimeItems[i,0]==true){
		hasItem=true;
		slimeItems[i,0]=false;
		switch(i){
		case Items.eyes:
			projectilespeed-=0.1;
			break;
		case Items.heart:
			projectiledamage-=0.1;
			break;
		case Items.ribcage:
			movSpd-=0.2;
			break;
		case Items.skin:
			break;
		case Items.bolt:
			shootRate+=10;
			break;
		case Items.chilli_pepper:
			movSpd/=1.5;
			break;
		case Items.bannana:
			projectilespeed/=1.1;
			break;
		case Items.ice:
			movSpd/=1.25;
			break;
		case Items.icecream:
			projectilespeed/=0.8;
			break;
		case Items.nail:
			projectiledamage/=1.5;
			break;
		case Items.sponge:
			projectiledamage/=0.9;
			movSpd/=1.1;
			break;
		case Items.snowflake:
			shootRate+=5;
			projectilespeed/=0.8;
			round(shootRate);
			projectiledamage/=1.2
			break;
		case Items.brain:
			shootRate+=1;
			projectilespeed-=0.4;
			projectiledamage-=0.4;
			break;
		}
		
		break;
	}
}
collected-=1;
if(!hasItem){
	//gameOver condition
	alive=false;
}