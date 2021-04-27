/// @description Insert description here
// You can write your code in this editor
if(other.y + 16 < y and other.vspeed > 0){
	room_restart()
}
else{
	sprite_index = spr_snowman_melt
	instance_destroy()
	
}