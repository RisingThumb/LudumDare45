/// @description Insert description here
// You can write your code in this editor
var genType=irandom(1);
if(genType==0){

	itemType=irandom(Items.totalItems-1);
}
else{
	itemType=-1;
	for(var i=0; i<Items.totalItems; i++){
		if(obj_player.slimeItems[i,0]==false){
			itemType=i;
			break;
		}
	}
	if(itemType==-1){
		itemType=irandom(Items.totalItems-1);
	}
}
x+=48;
y-=16;
switch(itemType){
	case Items.eyes:
		sprite_index=spr_eye;
		break;
	case Items.heart:
		sprite_index=spr_heart;
		break;
	case Items.ribcage:
		sprite_index=spr_ribcage;
		break;
	case Items.nail:
		sprite_index=sprNail;
		break;
	case Items.skin:
		sprite_index=sprSkin;
		break;
	case Items.bolt:
		sprite_index=sprLightning;
		break;
	case Items.brain:
		sprite_index=sprBrain;
		break;
	case Items.bannana:
		sprite_index=sprBanana;
		break;
	case Items.chilli_pepper:
		sprite_index=sprChiliPepper;
		break;
	case Items.ice:
		sprite_index=sprChillyPepper;
		break;
	case Items.sponge:
		sprite_index=sprSponge;
		break;
	case Items.icecream:
		sprite_index=sprIceCream;
		break;
	case Items.snowflake:
		sprite_index=sprSnowflake;
		break;
	default:
		sprite_index=spr_brain;
		break;
}