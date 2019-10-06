/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){
	if(distance_to_object(obj_player))>dist{
		move_towards_point(obj_player.x,obj_player.y,spd);
	}
	else{
		speed=0;
	}
}

if(obj_player.slimeItems[Items.brain,0]==false){
	instance_destroy();
}