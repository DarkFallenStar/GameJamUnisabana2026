if instance_exists(oDialog) exit

var xpos = 0
var ypos = guiH * 0.85
var boxw = guiW
var boxh = guiH - ypos

draw_set_font(TextFont)

var hp = oPlayer.hp
var maxhp = oPlayer.maxhp
var attack = oPlayer.attack
var defense = oPlayer.defense

var barw = 272
var barh = 48

draw_sprite_stretched(sBox,0,xpos,ypos,boxw,boxh)
xpos+=16
ypos+=16

var dx = xpos+16
var dy = ypos+16

var hpbar = barw*(hp/maxhp)
draw_sprite_stretched(sHealthbar, 0,dx,dy-4,barw,barh)
draw_sprite_stretched_ext(sHealthbar, 1,dx,dy-4,hpbar,barh,c_red,0.6)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text_transformed(dx+barw/2,dy+barh/2-4,$"{hp}/{maxhp}",global.statSize,global.statSize,0)

var tempGobCount = instance_number(oEnemy1)
+ instance_number(oEnemy2)
+ instance_number(oEnemy3)

var currentGobCount = totalGobCount-tempGobCount

var itemSize = 2.5
var vgap = 16*3
var hgap = 16*2
var hgapCoin = 16*1.5
var vmargin = 16

draw_sprite_ext(sCoin,0,boxw/3-hgapCoin,dy+vmargin,1,1,0,c_white,1)
draw_text_transformed(boxw/3+hgapCoin,dy+vmargin,$"{money}",global.statSize,global.statSize,0)

draw_sprite_ext(sDeadGoblin,0,boxw/2-hgap,dy+vmargin,itemSize,itemSize,0,c_white,1)
draw_text_transformed(boxw/2+hgap,dy+vmargin,$"{currentGobCount}/{totalGobCount}",global.statSize,global.statSize,0) 

draw_sprite_ext(sGold,0,boxw/1.5-hgap,dy+vmargin,1.5,1.5,0,c_white,1)
draw_text_transformed(boxw/1.5+hgap,dy+vmargin,$"{gold}/{totalGoldCount}",global.statSize,global.statSize,0)

draw_sprite_ext(sArmorIcon,oPlayer.defense,boxw-dx*2,dy,itemSize,itemSize,0,c_white,1)
draw_sprite_ext(sSwordIcon,oPlayer.attack,boxw-dx*5,dy,itemSize,itemSize,0,c_white,1)

draw_text_transformed(boxw-dx*2,dy+vgap,$"DEF: {defense}",global.statSize,global.statSize,0)
draw_text_transformed(boxw-dx*5,dy+vgap,$"ATK: {attack+2}",global.statSize,global.statSize,0)

draw_set_halign(fa_left)
draw_set_valign(fa_top)