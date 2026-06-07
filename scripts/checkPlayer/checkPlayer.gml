function checkPlayer(){
    var dis = distance_to_object(oPlayer)

    if (x == xstart) and (y == ystart){
        state = states.IDLE
    }
    
    if ((dis <= alert_dis) or (alert)) and dis > atkDis{
        alert = true
        
        if pathTimer-- <= 0{
            pathTimer = pathDelay
            var foundPlayer = mp_grid_path(
                global.mpGrid, path, x,y,oPlayer.x,oPlayer.y,choose(0,1))
            
            if foundPlayer{
                path_start(path, spd, path_action_stop,false)
                state = states.MOVE
            }
        }
        
        if (dis > alert_dis){
            alert = false
            if alarm[1] < 0{
                alarm[1] = 160
            }
        }
    }
    else{
        if dis <= atkDis{
            path_end()
            if canAttack{
                state = states.ATTACK
            }else{
                state = states.IDLE
            }
            if (image_index >= attackFrame and canAttack){
                var dir = point_direction(x,y,oPlayer.x,oPlayer.y)
                var xx = x+lengthdir_x(atkDis+20,dir)
                var yy = y+lengthdir_y(atkDis+20,dir)
                var enemyHit = instance_create_layer(xx,yy,"Instances",oEnemyhitbox)
                
                enemyHit.damage = damage
                canAttack = false
                
                alarm[2] = atkCooldown
                
                if oPlayer.alarm[1] < 0{
                    oPlayer.alarm[1] = 30
                    canTakeDamage = false
                    oPlayer.image_blend = c_red
                }
            }
        }
    }
}