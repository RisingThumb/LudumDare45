/// @description Insert description here
// You can write your code in this editor
itemType=irandom(Items.totalItems-1);
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
}