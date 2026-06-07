var dx = oGUI.x + 16
var dy = oGUI.y + 16
var barw = 256
var barh = 32

draw_set_font(MainFont)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

var hpbar = barw*(hp/maxhp)

draw_sprite_stretched(sHealthbar, 0,dx,dy,barw,barh)
draw_sprite_stretched_ext(sHealthbar, 1,dx,dy,hpbar,barh,c_red,0.6)

draw_text(dx+barw/2,dy+barh/2,$"{hp}/{maxhp}")

draw_set_halign(fa_left)
draw_set_valign(fa_top)