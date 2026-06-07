if !audio_is_playing(sndEndgamebgm){
    audio_play_sound(sndEndgamebgm,0,1,0.8)
}
timer++
    
draw_set_font(TextFont)

var keyUp = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(ord("A")) 
            or keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_left)

var KeyDown = keyboard_check_pressed(ord("S")) or keyboard_check_pressed(ord("D")) 
            or keyboard_check_pressed(vk_down) or keyboard_check_pressed(vk_right)

pressKey = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter)
    
var move = KeyDown - keyUp
    
if !instance_exists(oButtonSel){
        obtnSel = instance_create_layer(guiW/2,guiH-guiH/6,"Instances",oButtonSel);
    }
    
    if !instance_exists(btns[0]){
        btns[0] = instance_create_layer(guiW/2,guiH/2+guiH/4,"Instances",oButton);
    }
    obtnSel.image_xscale = 4
    obtnSel.image_yscale = 4
    
    if move != 0{ 
        audio_play_sound(sndMoveMenu,0,0,1,0.1)
        index += move
        
        var size = array_length(btns)
        
        if index < 0 { index = size - 1}
        else if index >= size {index = 0}
    }

for (var i = 0; i < array_length(btns); i++) {
    
    var btnSel = btns[i]
    
	if i == index{
        btnSel.image_xscale = lerp(min(btnSel.image_xscale + 0.2, 3), 2, 0.2)
        btnSel.image_yscale = lerp(min(btnSel.image_yscale + 0.2, 3), 2, 0.2)
        obtnSel.x = btnSel.x - (btnSel.sprite_width/2) + sin(timer*0.1)
        obtnSel.y = btnSel.y
        
        btnSel.y += sin(timer*0.08)*0.2
    
        if pressKey{
            audio_play_sound(sndSelect,0,0)
            btns[index].image_blend = c_gray
            switch (index) {   
                case 0:
                    //StartGame
                    trans = instance_create_layer(x,y,"Instances",oTransition)
                    trans.nextRoom = MainMenu
                    break 
            }
        }
        else{

        }
    }
    else{
        btnSel.image_xscale = max(btnSel.image_xscale - 0.5, 2)
        btnSel.image_yscale = max(btnSel.image_yscale - 0.5, 2)
    }
} 