/// @description Insert description here
// You can write your code in this editor
xPos=0;
for(var i=0; i<=Items.totalItems;i++){
	switch(i){
		case Items.bannana:
			var sprite=sprBanana;
			break;
		case Items.bolt:
			var sprite=sprLightning;
			break;
		case Items.brain:
			var sprite=sprBrain;
			break;
		case Items.chilli_pepper:
			var sprite=sprChiliPepper;
			break;
		case Items.eyes:
			var sprite=spr_eye;
			break;
		case Items.heart:
			var sprite=spr_heart;
			break;
		case Items.ice:
			var sprite=sprChillyPepper;
			break;
		case Items.icecream:
			var sprite=sprIceCream;
			break;
		case Items.nail:
			var sprite=sprNail;
			break;
		case Items.ribcage:
			var sprite=spr_ribcage;
			break;
		case Items.skin:
			var sprite=sprSkin;
			break;
		case Items.snowflake:
			var sprite=sprSnowflake;
			break;
		case Items.sponge:
			var sprite=sprSponge;
			break;
		default:
			var sprite=sprNothing;
			break;
	}
	if(i<Items.totalItems){
		draw_sprite_ext(sprite,0,i*32+32,room_height-32,1,1,0,c_gray,0.4);
		if(slimeItems[i,0]==true){
			draw_sprite_ext(sprite,0,i*32+32,room_height-32,1,1,0,c_white,1);
		}
	}
	else{
		draw_set_valign(fa_top)
		draw_set_halign(fa_right);
			var col=c_black;
			i+=2
			draw_text_color(i*32+1-8,room_height-31,string(collected)+"/"+string(Items.totalItems),col,col,col,col,1);
			draw_text_color(i*32-1-8,room_height-33,string(collected)+"/"+string(Items.totalItems),col,col,col,col,1);
			draw_text_color(i*32-1-8,room_height-31,string(collected)+"/"+string(Items.totalItems),col,col,col,col,1);
			draw_text_color(i*32+1-8,room_height-33,string(collected)+"/"+string(Items.totalItems),col,col,col,col,1);
			var col=c_red;
			draw_text_color(i*32-8,room_height-32,string(collected)+"/"+string(Items.totalItems),col,col,col,col,1);
			draw_set_halign(fa_center);
	}
}

if(!alive){
	sprite_index=sprSlimeDeatht;
	draw_sprite_ext(sprite_index,image_index,x,y,0.5*playerimgXscl,0.5,0,c_white,1);
	draw_set_alpha(0.4);
	draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
	if(!win){
	draw_text_color(room_width/2,room_height/2,"SLIME OVER\nPress R to Slime again",c_aqua,c_aqua,c_aqua,c_aqua,1);
	}
	else{
	draw_text_color(room_width/2,room_height/2,"ACQUIRED ALL ITEMS!\nSLIME HAS BECOME MAN!\nPress R to Slime again",c_aqua,c_aqua,c_aqua,c_aqua,1);
	}
	draw_set_alpha(1);
}