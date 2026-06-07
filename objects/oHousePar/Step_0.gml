if life > 0 and !dead{
    if life < maxhp/2{
        sprite_index = sHouseWorn
    }
    else{
        sprite_index = sHouse
    }
    
}
else{
    if !dead{
        instance_create_layer(x,y,"Instances",buildDrop)
        //audio_play_sound(grabNewsSnd,2,0,1,0, 1)
        //var partSys = part_system_create(partHouseDestroy)
        //part_system_position(partSys, x, y)
        dead = true
    }
    mask_index = -1;
    sprite_index = sHouseDestroyed
    image_blend = c_gray
}
if alarm[0] > 0{
    x = xstart + random_range(-5,5)

    y = ystart + random_range(-5,5)
    
}else{
    x = xstart

    y = ystart
}
