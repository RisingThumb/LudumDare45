///@param up
///@param side
///@param worn


switch(facing){
					case "up":
						imgXsclMod=1;
						var sprite=argument0;
						break;
					case "right":
						imgXsclMod=-1;
						var sprite=argument1;
						break
					case "left":
						imgXsclMod=1;
						var sprite=argument1;
						break;
					case "down":
						imgXsclMod=1;
						var sprite=argument2;
						break
				}
return sprite;