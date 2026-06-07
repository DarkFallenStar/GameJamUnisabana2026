if instance_exists(oDialog) exit
    
if distance_to_object(oPlayer) < 20{
    canTalk = true
    if keyboard_check_pressed(inputKey){
        
        if oPlayer.attack >= 3{
            dialog = global.maxSword
        }
        else if (oGUI.money < (oPlayer.attack+1)*5){
            dialog = global.noMoneySword
        }
        else{
            if oPlayer.attack < 3{
                dialog = global.upgradeSword
                oGUI.money -= (oPlayer.attack+1)*5
                oPlayer.attack += 1
                updateDialogs()
            }
        }
        createDialog(dialog)
    }
}
else{
    canTalk = false
}

