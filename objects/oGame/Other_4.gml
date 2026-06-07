#macro TS 16 

var w = ceil(room_width/TS)
var h = ceil(room_height/TS)

//Create motion planning grid
global.mpGrid = mp_grid_create(0,0,w,h,TS,TS)

mp_grid_add_instances(global.mpGrid, oSolid, false)
mp_grid_add_instances(global.mpGrid, oHouse, false)