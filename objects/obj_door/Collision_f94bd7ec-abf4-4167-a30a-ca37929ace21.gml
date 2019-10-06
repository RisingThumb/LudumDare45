/// @description Insert description here
// You can write your code in this editor
if(image_index==1){
	var pY = obj_player.y;
	var pX = obj_player.x;
	
	if(pY<48){
		obj_player.y=room_height-48;
	}
	else if(pY>room_height-48){
		obj_player.y=48;
	}
	else if(pX<48){
		obj_player.x=room_width-48;
	}
	else if(pX>room_width-48){
		obj_player.x=48;
	}
	
	if(room==rm_game){
		room_goto(rm_maze);
	}
	else{
		if(room==rm_maze){
			room_goto(rm_maze1);
		}
		else{
			room_goto(rm_maze);
		}
	}
}