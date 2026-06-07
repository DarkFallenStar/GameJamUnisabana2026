state = transtates.IN 

if nextRoom == noone{
    room_goto_next()
}
else if nextRoom == -1 {
    
    oPlayer.x = oPlayer.xstart
    oPlayer.y = oPlayer.ystart
    oPlayer.hp = oPlayer.maxhp
}
else
{
    room_goto(nextRoom)
    state = transtates.IN 
}

