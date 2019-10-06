/// @description Insert description here
// You can write your code in this editor
if(pressed==true){
	subimg=1;
}
else{
	subimg=0;
}
draw_sprite_ext(sprite_index,subimg,x,y,4,4,0,c_white,1);
draw_set_halign(fa_center);
draw_text(x,y,buttonText)