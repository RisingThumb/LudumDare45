/// @description Insert description here
// You can write your code in this editor

if(alive){
switch(facing){
	case "up":
		//upCase
		playerimgXscl=1;
		sprite_index=sprSlimeIdleUp;
		break;
	case "down":
		//downCase
		playerimgXscl=1;
		sprite_index=sprSlimeIdle;
		if(shot){
			sprite_index=sprSlimeAttack;
		}
		break;
	case "left":
		//leftCase
		playerimgXscl=1;
		sprite_index=sprSlimeIdleSide;
		if(shot){
			sprite_index=sprSlimeAttackSide;
		}
		break;
	case "right":
		//rightCase
		playerimgXscl=-1;
		sprite_index=sprSlimeIdleSide;
		if(shot){
			sprite_index=sprSlimeAttackSide;
		}
		break;
}
draw_sprite_ext(sprite_index,image_index,x,y,0.5*playerimgXscl,0.5,0,c_white,1);
if(flashalpha>0){
	shader_set(shader0)
	draw_sprite_ext(sprite_index,image_index,x,y,0.5*playerimgXscl,0.5,0,c_red,flashalpha);
	shader_reset();
	flashalpha-=0.05;
}

for(var i=0; i<array_height_2d(slimeItems); i++){
	if(slimeItems[i, 0]==true){
		switch(i){
			case Items.skin:
				var sprite=scr_itemWornDir(sprSlimeSkinIdleUp,sprSlimeSkinIdleSide,sprSlimeSkinIdle);
				break;
			case Items.heart:
				var sprite=scr_itemWornDir(sprHeartWornUp, sprHeartWornSide, sprHeartWorn);
				break;
			case Items.eyes:
				var sprite=scr_itemWornDir(sprNothing, sprEyeWornSide, sprEyeWorn);
				break;
			case Items.ribcage:
				var sprite=scr_itemWornDir(sprRibsWornUp, sprRibsWornSide, sprRibsWorn);
				break;
			case Items.nail:
				var sprite=scr_itemWornDir(sprNailsWornBack,sprNailsWornSide,sprNailsWorn);
				break;
			default:
				var sprite=sprNothing
				break;
		}
		draw_sprite_ext(sprite,0,x,y,0.5*imgXsclMod,0.5,0,c_white,1);
	}
}
}
//draw_text(10,10,"X:"+string(x)+"   Y:"+string(y));