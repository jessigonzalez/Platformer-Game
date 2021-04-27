/// @description Insert description here
// You can write your code in this editor
x = obj_player1.x
y = obj_player1.y - 20

image_angle = point_direction(x,y,mouse_x,mouse_y)
amoDelay = amoDelay -1
if(mouse_check_button(mb_any) && (amoDelay < 0)){
	amoDelay = 5
	with(instance_create_layer(x,y,"Instances",obj_snowball))
	{
		speed = 25
		direction = other.image_angle + random_range(-3,3)
		image_angle = direction
	}
}