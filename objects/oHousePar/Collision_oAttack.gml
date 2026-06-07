if (alarm[0] < 0) and life > 0{

    life -= other.damage
    
    audio_play_sound(sndHitHouse,0,0,0.7,0,random_range(0.6,1))
    
    alarm[0] = 10
}