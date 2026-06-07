var dx = 0
var dy = guiH * 0.75
var boxw = guiW
var boxh = guiH - dy

draw_set_font(TextFont)
draw_set_valign(fa_top)

draw_sprite_stretched(sBox,0,dx,dy,boxw,boxh)

//draw_sprite(sSpacebar,-1,dx+boxw*0.7,dy+boxh/2)

dx+= 16
dy+= 10

var _name = message[currentMsg].name

draw_set_colour(global.charColor[$ _name])

draw_text_transformed(dx,dy,_name,global.nameSize,global.nameSize,0)

draw_set_colour(c_white)

dy+=50

draw_text_ext_transformed(dx,dy,drawMsg,-1,boxw,global.textSize,global.textSize,0)

