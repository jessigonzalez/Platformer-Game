if(keyboard_check_pressed(vk_space))
{
	//room_goto_next()
	if(room == startScreen)
	{
		room_goto(screen_game1)
		//room_goto_next()
	}
	else if(room == screen_game1){
		if(global.PLAYER_LIVES>0 && global.PLAYER_SCORE == 3){
			room_goto(screen_game2)
		}
		else{
			room_goto(screen_end_lose)
		}
	}
	else if(room == screen_game2){
		if(global.PLAYER_LIVES>0 && global.PLAYER_SCORE == 3){
			room_goto(screen_game3)
		}
		else{
			room_goto(screen_end_lose)
		}
	}
	else if(room == screen_game3){
		if(global.PLAYER_LIVES>0 && global.PLAYER_SCORE == 3){
			room_goto(screen_end_win)
		}
		else{
			room_goto(screen_end_lose)
		}
	}
	else if(room == screen_end_lose)
	{
		global.PLAYER_SCORE = 0
		global.PLAYER_LIVES = 3
		room_goto(startScreen)
	}
	else if(room == screen_end_win)
	{
		global.PLAYER_SCORE = 0
		global.PLAYER_LIVES = 3
		room_goto(startScreen)
	}
}
if(global.PLAYER_LIVES <= 0){
	room_goto(screen_end_lose)
	global.PLAYER_LIVES = 3
}
