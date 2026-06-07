if canTakeDamage{
    hp -= clamp(other.damage - defense,0,100)
    canTakeDamage = false
    audio_play_sound(sndHitPlayer,0,0,0.8)
    layer_set_visible("Screenshake",true)
}
