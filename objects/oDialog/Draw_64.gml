var dx = 0
var dy = guiH * 0.8
var boxw = guiW
var boxh = guiH - dy

draw_set_font(TextFont)
draw_set_valign(fa_middle)

draw_sprite_stretched(sBox,0,dx,dy,boxw,boxh)

dx+= 20
dy+= 22

var _name = message[currentMsg].name

draw_set_colour(global.charColor[$ _name])

draw_text_transformed(dx,dy,_name,global.nameSize,global.nameSize,0)

draw_set_colour(c_white)

dy+=40

draw_text_ext_transformed(dx,dy,drawMsg,-1,boxw-dx*2,global.textSize,global.textSize,0)