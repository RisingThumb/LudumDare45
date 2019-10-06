/// @description Insert description here
// You can write your code in this editor
alarm_set(0,140);
var bone = instance_create_layer(x,y,"Instances",obj_bone);
bone.facing=facing;
facing=irandom(3);
//ThrowBone