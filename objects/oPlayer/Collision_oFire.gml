if canTakeDamage{
    image_blend = c_red
    hp -= other.damage
    canTakeDamage = false
    alarm[1] = 30
    audio_play_sound(sndHitEnemy,0,0)
    layer_set_visible("Screenshake",true)
}
