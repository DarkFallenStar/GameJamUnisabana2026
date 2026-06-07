global.mpGrid = 0
window_set_fullscreen(true)
pause = false

draw_set_font(TextFont)


money = 40

guiW = display_get_gui_width()
guiH = display_get_gui_height()

timer = 0

moveKey = keyboard_check_pressed(vk_up)
pressKey = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter)

obtnSel = 0

btns = [noone, noone, noone]
index = 1

audio_stop_all()