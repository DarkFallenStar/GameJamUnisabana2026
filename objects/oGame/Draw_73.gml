if pause{
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    
    draw_text_transformed(btns[0].x,btns[0].y,"Go to Menu",
        btns[0].image_xscale/2,btns[0].image_yscale/2,0)
    
    draw_text_transformed(btns[1].x,btns[1].y,"Resume",
        btns[1].image_xscale/2,btns[1].image_yscale/2,0)
    
    draw_text_transformed(btns[2].x,btns[2].y,"Unstuck",
        btns[2].image_xscale/2,btns[2].image_yscale/2,0)
    
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
}    
