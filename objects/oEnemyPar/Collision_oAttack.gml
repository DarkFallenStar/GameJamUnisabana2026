if (alarm[0] < 0) and life > 0{
    audio_play_sound(sndHitEnemy,0,0,0.3,0.08,random_range(0.8,1))
    path_end()

    life -= other.damage
    image_blend = c_red
    kbx = sign(x - other.x)
    kby = sign(y - other.y)
    
    //audio_play_sound(grabNewsSnd,2,0,1,0, 1)
    /*partSys = part_system_create(partEnemyTakedmg)
    part_system_depth(partSys, -100); 
    part_system_position(partSys, x, y)*/

    alarm[0] = 10
}

