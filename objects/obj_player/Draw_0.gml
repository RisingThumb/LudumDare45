/// @description Insert description here
// You can write your code in this editor
draw_self();
for(var i=0; i<array_height_2d(slimeItems); i++){
	if(slimeItems[i, 0]==true){
		switch(i){
			case Items.heart:
				draw_sprite(spr_heart,0,x,y);
				break;
			case Items.eyes:
				draw_sprite(spr_eye,0,x,y);
				break;
			case Items.ribcage:
				draw_sprite(spr_ribcage,0,x,y);
				break;
		}
	}
}