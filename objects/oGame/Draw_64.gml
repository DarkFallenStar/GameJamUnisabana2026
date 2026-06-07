if pause{
    var xpos = guiW/2
    var ypos = guiH/2
    var btnw = 200;
    var btnh = 100; 
    var dx = xpos - btnw/2
    var dy = ypos - btnh/2
    
    draw_set_alpha(0.5)
    draw_rectangle_colour(0,0,room_width,room_height,
    c_gray,c_gray,c_gray,c_gray,false)
    draw_set_alpha(1)

    btnResume = draw_sprite_stretched(sButton, 0, dx, dy-btnh, btnw, btnh);
    
    btnGomenu = draw_sprite_stretched(sButton, 0, dx, dy+btnh, btnw, btnh);
    
}






