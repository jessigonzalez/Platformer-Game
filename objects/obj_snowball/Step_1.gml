/*x = obj_player.x
y = obj_player.y + 5

image_angle = point_direction(x,y,mouse_x,mouse_y)

amoDelay = amoDelay -1
if(mouse_check_button(vk_left)) && (amoDelay < 0)
{
	amoDelay = 5 
	with (instance_create_layer(x,y,"Snowballs",obj_snowball))
	{
		speed =25;
		direction = other.image_angle;
		image_angle = direction
	}
}
*/
/*
x = obj_player1.x + 5
y = obj_player1.y + 5

amoDelay = amoDelay -1
if(keyboard_check(vk_shift) && (amoDelay < 0)){
	amoDelay = 5
	with(instance_create_layer(x,y,0,obj_snowball))
	{
		speed = 25
		direction = other.image_angle + random_range(-3,3)
		image_angle = direction
	}
}*/