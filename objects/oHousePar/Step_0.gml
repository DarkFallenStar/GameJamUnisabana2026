if life > 0 and !dead{
    image_index = 0
}
else{
    if !dead{
        instance_create_layer(x,y,"Instances",buildDrop)
        //audio_play_sound(grabNewsSnd,2,0,1,0, 1)
        //var partSys = part_system_create(partHouseDestroy)
        //part_system_position(partSys, x, y)
        dead = true
    }
    image_index = 1
    image_blend = c_gray
}
if alarm[0] > 0{
    x = xstart + random_range(-5,5)

    y = ystart + random_range(-5,5)
    
}else{
    x = xstart

    y = ystart
}
