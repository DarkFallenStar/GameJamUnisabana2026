if pause{
    instance_deactivate_all(true)
    instance_activate_layer("Buttons")
    
    var _cam = view_camera[0];
    var _cam_x = camera_get_view_x(_cam);
    var _cam_y = camera_get_view_y(_cam);
    var _cam_w = camera_get_view_width(_cam);
    var _cam_h = camera_get_view_height(_cam);
    
    var _center_x = _cam_x + (_cam_w / 2);
    var _center_y = _cam_y + (_cam_h / 2);
    timer++
    
    var keyUp = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(ord("A")) 
            or keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_left)

    var KeyDown = keyboard_check_pressed(ord("S")) or keyboard_check_pressed(ord("D")) 
            or keyboard_check_pressed(vk_down) or keyboard_check_pressed(vk_right)

    pressKey = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter)
    
    var move = KeyDown - keyUp
    

    
    if !instance_exists(oButtonSel){
        obtnSel = instance_create_layer(_center_x,_center_y-_cam_h/6,"Buttons",oButtonSel);
    }
    
    if !instance_exists(btns[0]){
        btns[0] = instance_create_layer(_center_x,_center_y+_cam_h/6,"Buttons",oButton);
    }
    if !instance_exists(btns[1]){
        btns[1] = instance_create_layer(_center_x,_center_y-_cam_h/6,"Buttons",oButton);
    }
    
    if move != 0{
    index += move
    
    var size = array_length(btns)
    
    if index < 0 { index = size - 1}
    else if index >= size {index = 0}
}

for (var i = 0; i < array_length(btns); i++) {
    
    var btnSel = btns[i]
    
	if i == index{
        btnSel.image_xscale = lerp(min(btnSel.image_xscale + 0.2, 1), 2, 0.2)
        btnSel.image_yscale = lerp(min(btnSel.image_yscale + 0.2, 1), 2, 0.2)
        obtnSel.x = btnSel.x - (btnSel.sprite_width/2) + sin(timer*0.1)
        obtnSel.y = btnSel.y
        
        btnSel.y += sin(timer*0.08)*0.2
    
        if pressKey{
            btns[index].image_blend = c_gray
            switch (index) {   
                case 0:
                    //Return Menu
                    game_end()
                    break 
                
                case 1:
                    //Resume Game
                    pause = false
                    break 
            }
        }
        else{
            btns[index].image_blend = c_white
        }
    }
    else{
        btnSel.image_xscale = max(btnSel.image_xscale - 0.5, 1)
        btnSel.image_yscale = max(btnSel.image_yscale - 0.5, 1)
    }
        
}
}
else{
    if instance_exists(btns[1]){
        instance_destroy(btns[1])
    }
    if instance_exists(btns[0]){
        instance_destroy(btns[0])
    }
    if instance_exists(oButtonSel){
        instance_destroy(oButtonSel)
    }
    instance_deactivate_layer("Buttons")
    instance_activate_all()
}

if keyboard_check(ord("H")){
if !instance_exists(oTransition){
        instance_create_layer(x,y,"Instances",oTransition)
    }
}