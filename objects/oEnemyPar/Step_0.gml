if (alarm[0] >= 0){
    x += kbx*0.5
    y += kby*0.5
}
if life > 0{
    checkPlayer()
}
else{
    if (alarm[0] < 0){
        instance_create_layer(x,y,"Dead",oEnemyDead)
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
