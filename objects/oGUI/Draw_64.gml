if instance_exists(oDialog) exit

var xpos = 0
var ypos = guiH * 0.85
var boxw = guiW
var boxh = guiH - ypos

draw_set_font(TextFont)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

var hp = oPlayer.hp
var maxhp = oPlayer.maxhp

var barw = 256
var barh = 32

draw_sprite_stretched(sBox,0,xpos,ypos,boxw,boxh)
xpos+=16
ypos+=16

draw_text_ext_transformed(xpos,ypos,money,-1,boxw-xpos*2,global.statSize,global.statSize,0)

var dx = xpos+16
var dy = ypos+16

var hpbar = barw*(hp/maxhp)
draw_sprite_stretched(sHealthbar, 0,dx,dy,barw,barh)
draw_sprite_stretched_ext(sHealthbar, 1,dx,dy,hpbar,barh,c_red,0.6)
draw_text_transformed(dx+barw/2,dy+barh/2,$"{hp}/{maxhp}",global.statSize,global.statSize,0)

draw_sprite(sArmorIcon,oPlayer.defense,dx,dy+10)