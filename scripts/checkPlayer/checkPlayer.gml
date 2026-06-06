function checkPlayer(){
    var dis = distance_to_object(oPlayer)
    
    if ((dis <= alert_dis) or (alert)) and dis > atkDis{
        
        alert = true
        
        if pathTimer-- <= 0{
            pathTimer = pathDelay
            var foundPlayer = mp_grid_path(
                global.mpGrid, path, x,y,oPlayer.x,oPlayer.y,choose(0,1))
            
            if foundPlayer{
                path_start(path, spd, path_action_stop,false)
            }
        }
    }
    else{
        if dis <= atkDis{
            path_end()
        }
    }
}