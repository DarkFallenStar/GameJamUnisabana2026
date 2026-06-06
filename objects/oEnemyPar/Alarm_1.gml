path_end()
var returnHome = mp_grid_path(global.mpGrid, path, x,y,xstart,ystart,choose(0,1))
            
if returnHome {
    path_start(path, spd, path_action_stop,false)
}