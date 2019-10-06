/// @description Insert description here
// You can write your code in this editor
text="";
level=scr_levels(irandom(50));
line=0;
charBreak=0;
for(i=0; i<string_length(level); i++){
	var char = string_char_at(level,i);
	var thing = generator_character_lookup(char);
	if(thing!=undefined){
		instance_create_layer((i-charBreak)*32,line*32,"Instances",thing);
	}
}
