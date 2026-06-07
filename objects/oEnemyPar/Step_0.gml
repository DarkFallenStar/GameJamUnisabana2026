if instance_exists(oDialog) {
    path_end()
    exit
}
    
if (alarm[0] >= 0){
    x += kbx*0.5
    y += kby*0.5
}
if life > 0{
    checkPlayer()
}
else{
    if (alarm[0] < 0){
        instance_create_layer(x,y,"Dead",oDeadCorpse)
        instance_create_layer(x,y,"Instances",oDrop)
        instance_destroy()
    }
}

//Horizontal Collisions
if (place_meeting(x+kbx, y, colTiles)) {
    while(!place_meeting(x+sign(kbx), y, colTiles)) {
        x += sign(kbx);
    }
    kbx = 0
}

//Vertical Collisions
if (place_meeting(x, y+kby, colTiles)) {
    while(!place_meeting(x, y+sign(kby), colTiles)) {
        y += sign(kby);
    }
    kby = 0 
}

switch (state) {
	case states.IDLE:
        sprite_index = sIdle
    break    

	case states.MOVE:
        sprite_index = sMove
    break    

	case states.ATTACK:
        sprite_index = sAttack1
    break    

	case states.DEAD:
        sprite_index = sDead
    break    
}

dirPlayer = point_direction(x,y,oPlayer.x,oPlayer.y)

if dirPlayer > 90 and dirPlayer < 270 {
    image_xscale = 1
}
else{
    image_xscale = -1
}
