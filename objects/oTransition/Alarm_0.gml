state = transtates.IN 

if nextRoom == noone{
    room_goto_next()
}
else if nextRoom == -1 {
    
    oPlayer.x = oPlayer.xstart
    oPlayer.y = oPlayer.ystart
    oPlayer.hp = oPlayer.maxhp
    if (alarm[3] < 0){
        oGUI.money /=2
        alarm[3] = 60
    }

}
else if nextRoom == -2 {
    
    oPlayer.x = oPlayer.xstart
    oPlayer.y = oPlayer.ystart
    
}
else
{
    room_goto(nextRoom)
    state = transtates.IN 
}

