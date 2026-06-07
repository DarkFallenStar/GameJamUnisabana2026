if pause{
    instance_deactivate_all(true)
    instance_activate_layer("Buttons")
    timer++
    
    var _cam = view_camera[0];
    var _cam_x = camera_get_view_x(_cam);
    var _cam_y = camera_get_view_y(_cam);
    var _cam_w = camera_get_view_width(_cam);
    var _cam_h = camera_get_view_height(_cam);
    
    var _center_x = _cam_x + (_cam_w / 2);
    var _center_y = _cam_y + (_cam_h / 2);
    
    if !instance_exists(btnResume){
        btnResume = instance_create_layer(_center_x,_center_y-_cam_h/6,"Buttons",oButton);
    }
    
    if !instance_exists(btnGomenu){
        btnGomenu = instance_create_layer(_center_x,_center_y+_cam_h/6,"Buttons",oButton);
    }

    
    if moveKey{
        selection++
        
        btnResume.x += 1
    }
}
else{
    if instance_exists(btnResume){
        instance_destroy(btnResume)
    }
    if instance_exists(btnGomenu){
        instance_destroy(btnGomenu)
    }
    instance_activate_all()
}