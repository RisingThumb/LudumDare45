/// @description Insert description here
// You can write your code in this editor
draw_set_font(fn_1)

global.ps=part_system_create();

global.part_slime=part_type_create();

part_type_color1(global.part_slime,make_color_rgb(95,205,228));
part_type_alpha2(global.part_slime,0.6,0);
part_type_life(global.part_slime,20,30);
part_type_speed(global.part_slime,3,5,-0.1,false);
part_type_direction(global.part_slime,0,359,0,false);
part_type_shape(global.part_slime,pt_shape_pixel);
part_type_size(global.part_slime,1,3,-0.04,false);

global.part_gain=part_type_create();

part_type_color1(global.part_gain,make_color_rgb(251,242,54));
part_type_alpha2(global.part_gain,0.8,0.1);
part_type_life(global.part_gain,20,30);
part_type_speed(global.part_gain,3,5,+0.1,true);
part_type_direction(global.part_gain,70,120,0,true);
part_type_shape(global.part_gain,pt_shape_pixel);
part_type_size(global.part_gain,1,3,-0.04,false);

global.part_skel=part_type_create();

part_type_color1(global.part_skel,make_color_rgb(255,255,255));
part_type_alpha2(global.part_skel,0.6,0);
part_type_life(global.part_skel,20,30);
part_type_speed(global.part_skel,3,5,-0.1,false);
part_type_direction(global.part_skel,0,359,0,false);
part_type_shape(global.part_skel,pt_shape_pixel);
part_type_size(global.part_skel,1,3,-0.04,false);

global.part_mag=part_type_create();

part_type_color1(global.part_mag,make_color_rgb(172,60,50));
part_type_alpha2(global.part_mag,0.6,0);
part_type_life(global.part_mag,20,30);
part_type_speed(global.part_mag,3,5,-0.1,false);
part_type_direction(global.part_mag,0,359,0,false);
part_type_shape(global.part_mag,pt_shape_pixel);
part_type_size(global.part_mag,1,3,-0.04,false);


room_goto_next();