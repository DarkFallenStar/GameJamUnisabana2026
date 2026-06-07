if instance_exists(oDialog) exit
    
if distance_to_object(oPlayer) < 20{
    canTalk = true
    if keyboard_check_pressed(inputKey){
        if oPlayer.hp == oPlayer.maxhp{
            dialog = global.fullHp
        }
        else if oGUI.money < 5{
            dialog = global.buyntLife
        }
        else{
            dialog = global.buyLife
            oGUI.money -= 5
            oPlayer.hp = clamp(oPlayer.hp + 5, 0, 20)
        }
        createDialog(dialog)
    }
}
else{
    canTalk = false
}

