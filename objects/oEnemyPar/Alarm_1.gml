path_end()
state = states.MOVE
var returnHome = mp_grid_path(global.mpGrid, path, x,y,xstart,ystart,choose(0,1))
            
if returnHome {
    path_start(path, spd/2, path_action_stop,false)
}