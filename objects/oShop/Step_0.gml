if instance_exists(oDialog) exit
    
if distance_to_object(oPlayer) < 20{
    canTalk = true
    if keyboard_check_pressed(inputKey){
        if oGUI.money < 5{
            dialog = global.buyntLife
        }
        else{
            dialog = global.buyLife
            oGUI.money -= 5
            oPlayer.hp += 5
        }
        createDialog(dialog)
    }
}
else{
    canTalk = false
}

