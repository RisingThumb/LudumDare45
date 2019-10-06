/// @function generator_character_lookup(character);
/// @description Returns an object, or undefined, based on the character passed in
/// @param {string} The character to check for
/// @return {real} An object index or _undefined_

switch (argument0) {
	case ("p"):
		return obj_pit;
	case ("@"):
		return obj_rock;
    case ("#"):
        return obj_wall;
    case ("i"):
        return obj_item;
	case ("d"):
		return obj_door;
	case ("e"):
		switch(irandom(1)){
			case 0:
				return obj_maggot;
			case 1:
				return obj_skeleton;
		}
	case("/"):
		line+=1;
		charBreak=i;
		return undefined;
        
    // no case matches
    default:
        return undefined;
}