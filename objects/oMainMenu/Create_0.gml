window_set_fullscreen(true)

guiW = display_get_gui_width()
guiH = display_get_gui_height()

timer = 0

pressKey = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter)

obtnSel = 0

btns = [noone, noone]
index = 1
