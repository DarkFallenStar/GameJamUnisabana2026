global.mpGrid = 0
window_set_fullscreen(true)
pause = false

draw_set_font(TextFont)


money = 40

guiW = display_get_gui_width()
guiH = display_get_gui_height()

timer = 0

upKey = keyboard_check_pressed(vk_up)
btnGomenu = 0
btnResume = 0

selection = [btnResume,btnGomenu]