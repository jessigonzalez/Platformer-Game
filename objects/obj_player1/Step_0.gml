canjump -=1
if keyboard_check(ord("A")){							// if pressing A..
    currDirection = -1
	if !instance_position(x-mspd,y-16,obj_platform) && x>(0+(mspd*3)){	// check for a platoform at next intended position..
        x -= mspd										// only move character if there is space!
    }
    image_xscale = -1									//flip the sprite to face left
    if grounded{
        sprite_index= spr_snowman_run
    }
}else
if keyboard_check(ord("D")){ 
    currDirection = 1
	if !instance_position(x+mspd,y-16,obj_platform) && x<(room_width-(mspd*3)){
        x += mspd
    }
    image_xscale = 1									//flip the sprite to face right
    if grounded{										//only change to walking sprite if on the ground
        sprite_index= spr_snowman_run
    }
}else{		
	currDirection = 0//if not pressing either direction..
    if grounded{										//..and on the ground.. 
        sprite_index= spr_snowman_idle					//..show idle animation!
    }
}


if grounded{											// if player is touching the ground or platform
    jump_amt = 0										// set our jump value to 0 so we don't move
    canjump = 25
    if keyboard_check_pressed(ord("W")){				//check for jump key only if on the ground
        jump_amt = jump_max								// set our jump value to its max to start the jump
		if(!keyboard_check(ord("W"))){
			jump_amt = jump_max*(1/mspd)
		}
        y -= jump_amt									// move player upward by the current jump value
        grounded=false									// we're not on the ground anymore!
		if canjump > 0{
			canjump=0
		}
    }
    
}else{													// if player is NOT on the ground
    y -= jump_amt										// move player upward by the current jump value
    if jump_amt > -jump_max{							// this is to keep player from falling too fast
        jump_amt -= grav_amt							// reduce the jump strength by gravity, this gives the arc
    }    
    
    if jump_amt > 0{									// use jump sprite for jump, fall sprite for fall!
        sprite_index= spr_snowman_jump
    }else{
        sprite_index= spr_snowman_fall
    }
	
}

if(jump_amt <= 0){
	hit_plat = instance_position(x,y+4, obj_platform)
	if(hit_plat != noone){
		y = hit_plat.y-1
		grounded = true
	}else{
		grounded = false
	}
}

if !grounded
and jump_amt>0{
    if instance_position(x,y-32-jump_amt,obj_platform){
        jump_amt=0
    }
}