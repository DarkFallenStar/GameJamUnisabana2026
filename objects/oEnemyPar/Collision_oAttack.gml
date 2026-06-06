if (alarm[0] < 0){

    life -= other.damage
    image_blend = c_blue
    kbx = sign(x - other.x)
    kby = sign(y - other.y)
    
    alarm[0] = 20
}