/// @description Insert description here
// You can write your code in this editor
//draw_set_font(fontCool)
draw_set_color(c_white)
draw_text(20,110,"Time Left: " + string(showTime))

if(myTime == 0){
	draw_set_color(c_yellow)
	draw_text(600,300,"PRESS SPACE")
}