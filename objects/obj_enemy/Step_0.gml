/// @description Insert description here
// You can write your code in this editor
if(state == "left"){
	hspeed = -4;
}
else if(state =="right")
{
	hspeed = 4;
}

if(!place_free(x+hspeed, y)){
	if(state=="left"){
		state="right"
	}
	else{
		state="left"
	}	
}

if(place_free(x+hspeed,y) and place_free(x+hspeed*16,y+16)){
	if(state="left"){
		state="right"
	}
	else{
		state="left"
	}
}