//change sprite 
if(room == screen_game1){
	sprite_index = spr_platform1
}
if(room == screen_game2){
	sprite_index = spr_platform2
}
if(room == screen_game3){
	sprite_index = spr_platform3
}

//is shiny or not
if shiny{
    image_speed = 0.3    
}else{
    image_speed=0
}

if image_index>11{
        shiny=false
        image_index=0
}

