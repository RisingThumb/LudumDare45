/// @description Insert description here
// You can write your code in this editor
part_particles_create(global.ps, x, y, global.part_gain, 50);

if(slimeItems[other.itemType,0]==false){
	switch(other.itemType){
		case Items.eyes:
			projectilespeed+=0.4;
			break;
		case Items.heart:
			projectiledamage+=0.3;
			break;
		case Items.ribcage:
			movSpd+=0.2;
			break;
		case Items.brain:
			brain=instance_create_layer(x,y,"Instances",obj_playerfollow);
			brain.spd=2;
			brain.dist=32;
			brain.sprite_index=sprBrainActive;
			shootRate-=1;
			projectilespeed+=0.4;
			projectiledamage+=0.4;
			
			
		case Items.skin:
				break;
		case Items.bannana:
			projectilespeed*=1.1;
			break;
		case Items.bolt:
			shootRate-=10;
			break;
		case Items.chilli_pepper:
			movSpd*=1.5;
			break;
		case Items.ice:
			movSpd*=1.25;
			break;
		case Items.icecream:
			projectilespeed*=0.8;
			break;
		case Items.nail:
			projectiledamage*=1.5;
			break;
		case Items.snowflake:
			shootRate-=5;
			projectilespeed*=0.8;
			projectiledamage*=1.2
			break;
		case Items.sponge:
			projectiledamage*=0.9;
			movSpd*=1.1;
	}
	collected+=1;
}
itemAcquired=other.itemType;
itemAcquiredAlpha=1;
slimeItems[other.itemType,0]=true;
instance_destroy(other.id);
