/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,1)
if(flashalpha>0){
	flashalpha-=0.05;
	shader_set(shader0)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_red,flashalpha);
	shader_reset();
}